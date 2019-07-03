using System;
using System.Collections.Generic;
using App.Logger.Targets.ObjectHistoryLogger;
using System.Data.Common;
using System.Data.SqlClient;
using App.Logger.Targets.ObjectHistoryLogger.Data.DBScripts.OHSqlClient.Queries;
using Npgsql;
using System.Net;
using System.Data;

namespace App.Logger.Targets.ObjectHistoryLogger.Data
{
    public class OHSqlClient : OHDbBaseClient
    {
        public OHSqlClient(OHTarget target)
            : base(target)
        {

        }


        public override bool DbSchemaUpdated
        {
            get
            {
                bool result = false;

                string objectsPrefix = string.IsNullOrEmpty(target.DBTablesPrefix) ? "" : target.DBTablesPrefix;
                DbProviderFactory dbFact = DbProviderFactories.GetFactory(target.DbProviderInvariantName);
                NpgsqlConnection conn = new NpgsqlConnection();
                conn.ConnectionString = target.ConnectionString;
                NpgsqlCommand comm = new NpgsqlCommand();
                
                comm = conn.CreateCommand();
                    comm.CommandType = System.Data.CommandType.Text;
                    string query = "SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME IN ('{0}', '{1}', '{2}', '{3}', '{4}');";
                    query = string.Format(query, tbl_EventLogs, tbl_Levels, tbl_ObjectLogDetails, tbl_ObjectLogs, tbl_Operations);
                  
                    comm.CommandText = query;
                conn.Open();
                object qResult = comm.ExecuteScalar();
                    conn.Close();

                    int count = 0;
                    int.TryParse(qResult.ToString(), out count);

                    result = (count == 5);  

                    return result;
                
            }
        }

        public override void SaveObject(OHInfo objInfo, OHTarget target)
        {
          
            OHSqlClient sqlClient = new OHSqlClient(target);
            var keyPropertyValue = objInfo.LoggableProperties.Find(p => p.Name.Equals(objInfo.KeyPropertyName)).Value;
            List<OHResultItem> lastVersion = sqlClient.GetLastVersion(objInfo.ObjectType, keyPropertyValue).AsList();

          
            DbProviderFactory dbFact = DbProviderFactories.GetFactory(target.DbProviderInvariantName);
            NpgsqlConnection conn = new NpgsqlConnection(target.ConnectionString);


            NpgsqlCommand comm = new NpgsqlCommand();
            
            comm = conn.CreateCommand();
            comm.CommandType = System.Data.CommandType.Text;

            string script = string.Empty;

            script += "DO $$ \n";
            script += @" DECLARE OperationID integer; ";
            script += @"DECLARE ObjectLogID integer; ";
            script += "BEGIN \n";
            script += @"INSERT INTO ""Operations""(""User"", ""Guid"", ""PcName"", ""TimeStamp"", ""KeyValue"") VALUES('YEK', '" + Guid.NewGuid() + "', '" + Dns.GetHostName() + "', now(), '" + keyPropertyValue + "') RETURNING \"OperaionID\" INTO OperationID; \n";
            script += @"ObjectLogID := (SELECT ""ObjectLogID"" FROM ""ObjectLogs"" WHERE ""Name"" LIKE '" + objInfo.ObjectName + "' AND \"ObjectType\" LIKE '" + objInfo.ObjectType.ToString() + "' LIMIT 1); \n";
            script += @"IF ObjectLogID ISNULL THEN ";


            script += @"INSERT INTO ""ObjectLogs""(""Name"", ""ObjectType"") VALUES('" + objInfo.ObjectName + "', '" + objInfo.SourceObject + "') RETURNING \"ObjectLogID\" INTO ObjectLogID; \n";
            script += "END IF; \n";
            script += "END $$; \n";

            
            bool hasChanges = false;
            foreach (var prop in objInfo.LoggableProperties)
            {
                OHResultItem LastVersionPropInfo = lastVersion.Find(p => p.PropertyName.Equals(prop.Name));
                string oldValue = LastVersionPropInfo == null ? null : LastVersionPropInfo.PropertyValue;
                string newValue = prop.Value;
                
                if (objInfo.AppendType == AppendTypes.Incremental || newValue != oldValue)
                {
                    hasChanges = true;
                    string dbValue = prop.Value == null ? "NULL" : string.Format("'{0}'", prop.Value);
                    script += @"INSERT INTO ""ObjectLogDetails"" (""ObjectLogID"" ,""OperationID"" ,""LevelID"" ,""PropertyName"" ,""PropertyValue"",""PropertyType"") VALUES ((Select ""ObjectLogID""  From ""ObjectLogs""  Where ""ObjectType""='" + objInfo.SourceObject + "'), (Select \"OperaionID\" From\"Operations\"  Order By \"OperaionID\" Desc LIMIT 1), (Select \"LevelID\" From \"Levels\" Order By \"LevelID\" Desc  LIMIT 1),'" + prop.Name + "', " + dbValue + ", '" + prop.Type + "');";

                }
            }

            if (!hasChanges) return;
            
            
            comm.CommandText = string.Format(script,  target.DBTablesPrefix);
            

            comm.Parameters.Add(new NpgsqlParameter("@KeyValue", objInfo.LoggableProperties.Find(p => p.Name.Equals(objInfo.KeyPropertyName)).Value));
            comm.Parameters.Add(new NpgsqlParameter("@User", string.IsNullOrEmpty(objInfo.User) ? string.Empty : objInfo.User));
            comm.Parameters.Add(new NpgsqlParameter("@Guid", objInfo.Guid));
            comm.Parameters.Add(new NpgsqlParameter("@PcName", string.IsNullOrEmpty(objInfo.PcName) ? string.Empty : objInfo.PcName));
            comm.Parameters.Add(new NpgsqlParameter("@TimeStamp", objInfo.TimeStamp));
            comm.Parameters.Add(new NpgsqlParameter("@ObjectName", objInfo.ObjectName));
            comm.Parameters.Add(new NpgsqlParameter("@ObjectType", objInfo.ObjectType.ToString()));
            
            conn.Open();
            comm.ExecuteNonQuery();

            conn.Close();

        }


        
        public override OHDbBaseClient.OHResultList GetLastVersion(Type objType, string KeyValue)
        {
            OHInfo objInfo = new OHInfo(objType, target);
            DbProviderFactory dbFact = DbProviderFactories.GetFactory(target.DbProviderInvariantName);
            NpgsqlConnection conn = new NpgsqlConnection();
            conn.ConnectionString = target.ConnectionString;

            NpgsqlCommand comm = new NpgsqlCommand();


            
            comm = conn.CreateCommand();
            comm.CommandType = System.Data.CommandType.Text;
            comm.CommandText = "SELECT tbl.* FROM (" +
               string.Format(SqlClientQueriesResource.GetObjectsLastVersion, this.target.DBTablesPrefix) +
               ") tbl WHERE tbl.\"ObjectName\" = '{0}' AND tbl.\"ObjectType\" = '{1}' AND tbl.\"KeyValue\" = '{2}'";
            comm.CommandText = string.Format(
                                    comm.CommandText,
                                    objInfo.ObjectName,
                                    objInfo.ObjectType.ToString(),
                                    KeyValue.ToString());

            conn.Open();
            OHDbBaseClient.OHResultList list = new OHResultList(objInfo, comm.ExecuteReader(), true);
            conn.Close();

            return list;
        }

        public override OHResultList GetVersion(Type objType, string keyValue, DateTime date)
        {
            OHInfo objInfo = new OHInfo(objType, target);

            DbProviderFactory dbFact = DbProviderFactories.GetFactory(target.DbProviderInvariantName);
            NpgsqlConnection conn = new NpgsqlConnection();
            conn.ConnectionString = target.ConnectionString;

            NpgsqlCommand comm = new NpgsqlCommand();



            comm = conn.CreateCommand();
            comm.CommandType = System.Data.CommandType.Text;
            comm.CommandText = "SELECT tbl.* FROM (" +
               string.Format(SqlClientQueriesResource.GetObjectsLastVersion, this.target.DBTablesPrefix) +
               ") tbl WHERE tbl.\"ObjectName\" = '{0}' AND tbl.\"ObjectType\" = '{1}' AND tbl.\"KeyValue\" = '{2}'";
            comm.CommandText = string.Format(
                                    comm.CommandText,
                                    objInfo.ObjectName,
                                    objInfo.ObjectType.ToString(),
                                    keyValue.ToString());

            NpgsqlParameter paramMaxDate = new NpgsqlParameter();
            paramMaxDate.ParameterName = "MaxDate";
            paramMaxDate.Value = date;
            comm.Parameters.Add(paramMaxDate);

            conn.Open();
            OHDbBaseClient.OHResultList list = new OHResultList(objInfo, comm.ExecuteReader(), true);
            conn.Close();

            return list;
        }

        public override OHDbBaseClient.OHResultList GetHistory(Type objType, string keyValue)
        {
            OHInfo objInfo = new OHInfo(objType, target);
            DbProviderFactory dbFact = DbProviderFactories.GetFactory(target.DbProviderInvariantName);
            NpgsqlConnection conn = new NpgsqlConnection();
            conn.ConnectionString = target.ConnectionString;
            NpgsqlCommand comm = new NpgsqlCommand();



            comm = conn.CreateCommand();
            comm.CommandType = System.Data.CommandType.Text;
            comm.CommandText = "SELECT tbl.* FROM (" +
               string.Format(SqlClientQueriesResource.GetObjectsLastVersion, this.target.DBTablesPrefix) +
               ") tbl WHERE tbl.\"ObjectName\" = '{0}' AND tbl.\"ObjectType\" = '{1}' AND tbl.\"KeyValue\" = '{2}'";
            comm.CommandText = string.Format(
                                comm.CommandText,
                                objInfo.ObjectName,
                                objInfo.ObjectType.ToString(),
                                keyValue);

            conn.Open();
            OHDbBaseClient.OHResultList list = new OHResultList(objInfo, comm.ExecuteReader(), false);
            conn.Close();

            return list;
        }

        public override string DbScriptsContainerPath
        {
            get { return "App.Logger.Targets.ObjectHistoryLogger.Npgsql.DBScripts"; }
        }
    }
}