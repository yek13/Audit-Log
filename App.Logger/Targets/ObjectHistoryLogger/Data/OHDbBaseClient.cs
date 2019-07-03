using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Reflection;
using Npgsql;

namespace App.Logger.Targets.ObjectHistoryLogger.Data
{
	
	public abstract class OHDbBaseClient
	{
		public readonly OHTarget target = null;
		protected string tbl_ObjectLogs
		{
			get 
			{
				string objectsPrefix = string.IsNullOrEmpty(target.DBTablesPrefix) ? "" : target.DBTablesPrefix;
				return objectsPrefix + "ObjectLogs";
			}
		}
		protected string tbl_ObjectLogDetails
		{
			get
			{
				string objectsPrefix = string.IsNullOrEmpty(target.DBTablesPrefix) ? "" : target.DBTablesPrefix;
				return objectsPrefix + "ObjectLogDetails";
			}
		}
		protected string tbl_EventLogs
		{
			get 
			{
				string objectsPrefix = string.IsNullOrEmpty(target.DBTablesPrefix) ? "" : target.DBTablesPrefix;
				return objectsPrefix + "EventLogs";
			}
		}
		protected string tbl_Operations
		{
			get
			{
				string objectsPrefix = string.IsNullOrEmpty(target.DBTablesPrefix) ? "" : target.DBTablesPrefix;
				return objectsPrefix + "Operations";
			}
		}
		protected string tbl_Levels
		{
			get 
			{
				string objectsPrefix = string.IsNullOrEmpty(target.DBTablesPrefix) ? "" : target.DBTablesPrefix;
				return objectsPrefix + "Levels";
			}
		}

		public OHDbBaseClient(OHTarget target)
		{
			this.target = target;
		}

		public abstract string DbScriptsContainerPath { get; }
		public abstract bool DbSchemaUpdated { get; }
		public abstract void SaveObject(OHInfo objInfo, OHTarget target);
		public abstract OHResultList GetLastVersion(Type objType, string keyValue);
		public abstract OHResultList GetVersion(Type objType, string keyValue, DateTime date);
		public abstract OHResultList GetHistory(Type objType, string keyValue);

		public virtual void CreateDBSchema()
		{
			if (DbSchemaUpdated) return;

			string objectsPrefix = string.IsNullOrEmpty(target.DBTablesPrefix) ? "" : target.DBTablesPrefix;
            DbProviderFactory dbFact = DbProviderFactories.GetFactory(target.DbProviderInvariantName);

            NpgsqlConnection conn = new NpgsqlConnection();
            conn.ConnectionString = target.ConnectionString;

            NpgsqlCommand comm = new NpgsqlCommand();
            comm = conn.CreateCommand();
            comm.CommandType = System.Data.CommandType.Text;

			conn.Open();
            
            List<string> scripts = DBScripts.OHScriptManager.GetTablesScripts(this);
            foreach (var script in scripts)
            {
                if (!string.IsNullOrEmpty(script.Trim()))
                {
                    comm.CommandText = script;
                    comm.ExecuteNonQuery();
                }
            }
            
            scripts = DBScripts.OHScriptManager.GetProceduresScripts(this);
            foreach (var script in scripts)
            {
                if (!string.IsNullOrEmpty(script.Trim()))
                {
                    comm.CommandText = script;
                    comm.ExecuteNonQuery();
                }
            }

            scripts = DBScripts.OHScriptManager.GetViewsScripts(this);
            foreach (var script in scripts)
            {
                if (!string.IsNullOrEmpty(script.Trim()))
                {
                    comm.CommandText = script;
                    comm.ExecuteNonQuery();
                }
            }
            scripts = DBScripts.OHScriptManager.GetDataScripts(this);
            foreach (var script in scripts)
            {
                if (!string.IsNullOrEmpty(script.Trim()))
                {
                    comm.CommandText = script;
                    comm.ExecuteNonQuery();
                }
            }

            conn.Close();
        }
        

        public class OHResultList
		{
			List<OHResultItem> Items = null;
			OHInfo objInfo = null;
			bool Merge = false;

            
			protected internal OHResultList(OHInfo objInfo, NpgsqlDataReader reader, bool mergeResults)
			{
				LoadData(reader);
				this.objInfo = objInfo;
				Merge = mergeResults;
			}


			
			private void LoadData(NpgsqlDataReader reader)
			{
				Items = new List<OHResultItem>();

				while (reader.Read())
				{
					OHResultItem item = new OHResultItem();

					item.OperationID = int.Parse(reader["OperationID"].ToString());

					item.PropertyName = reader["PropertyName"].ToString();
					item.PropertyValue = reader["PropertyValue"].ToString();
					item.PropertyType = reader["PropertyType"].ToString();

					item.ObjectName = reader["ObjectName"].ToString();
					item.ObjectType = reader["ObjectType"].ToString();

					item.TimeStamp = DateTime.Parse(reader["LastModified"].ToString());
					item.User = reader["User"].ToString();
    //                Guid.NewGuid().ToString();
                    item.Level = reader["Level"].ToString();

					Items.Add(item);
				}
			}

			
			public List<OHResultItem> AsList()
			{
				return Items;
			}

			public DataTable AsDataTable()
			{
				var table = new DataTable();
				
				var list = AsList();
				var columns = list.Select(p => p.PropertyName).Distinct();
				var operations = list.Select(p => p.OperationID).Distinct();
				
				foreach (var col in columns)
				{
					table.Columns.Add(col, typeof(string));
				}
				table.Columns.Add("User", typeof(string));
				table.Columns.Add("TimeStamp", typeof(string));


				if (Merge)
				{
					DataRow nrow = table.NewRow();
					foreach (var property in columns)
					{
						nrow[property] = list.Find(p => p.PropertyName == property).PropertyValue;
					}
				
					OHResultItem tItem = list.Find(p => p.TimeStamp == list.Max(ml => ml.TimeStamp));
					nrow ["User"] = tItem.User;
					nrow["TimeStamp"] = tItem.TimeStamp;

					table.Rows.Add(nrow);
				}
				else
				{
					foreach (var operation in operations)
					{
						DataRow nrow = table.NewRow();

						var changes = list.FindAll(p => p.OperationID == operation).ToList();
						foreach (var change in changes)
						{
							nrow[change.PropertyName] = change.PropertyValue;
						}

						OHResultItem tItem = list.Find(p => p.OperationID == operation);
						nrow["User"] = tItem.User;
						nrow["TimeStamp"] = tItem.TimeStamp;

						table.Rows.Add(nrow);
					}
				}


				return table;
			}
            
			public Object AsObject(Type type)
			{
				throw new NotImplementedException();
                

				object obj = Activator.CreateInstance(type);

				foreach (var item in AsList())
				{
					PropertyInfo pInfo = obj.GetType().GetProperty(item.PropertyName);
					if (pInfo != null && pInfo.PropertyType.ToString() == item.PropertyType)
					{
						pInfo.SetValue(obj, item.PropertyValue, null);
					}
				}

				return obj;
			}
		}

		public class OHResultItem
		{
			public int OperationID { get; set; }
            public int ObjectLogID { get; set; }

            public string PropertyName { get; set; }
			public string PropertyValue { get; set; }
			public string PropertyType { get; set; }

			public string ObjectName { get; set; }
			public string ObjectType { get; set; }

			public DateTime TimeStamp { get; set; }
			public string User { get; set; }
            public Guid Guid { get; set; }
            public string PcName { get; set; }
            public string Level { get; set; }
		}

	}
}
