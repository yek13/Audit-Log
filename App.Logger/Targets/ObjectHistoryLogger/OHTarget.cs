using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NLog;
using App.Logger.Targets.ObjectHistoryLogger.Data;
using App.Logger.Targets.ObjectHistoryLogger.Configuration;
using NLog.Targets;

namespace App.Logger.Targets.ObjectHistoryLogger
{
	[Target("OHTarget")] 
	public sealed class OHTarget : NLog.Targets.TargetWithLayout
	{

       
        public string DbProviderInvariantName { get; set; }

       
        public string ConnectionString { get; set; }

        public string DBTablesPrefix { get; set; }

        bool _autoCreateDatabase = false;
   
        public bool AutoCreateDatabase
        {
            get { return _autoCreateDatabase; }
            set { _autoCreateDatabase = value; }
        }

        public string LogTypes { get; set; }

        
        protected override void Write(NLog.LogEventInfo logEvent)
        {
            ValidateMandatoryOptions();
            
            if (AutoCreateDatabase)
                CreateDatabase();
            
            List<OHInfo> objectsToLog = new List<OHInfo>();
            OHAuditInfo auditInfo = null;
            if (logEvent.Parameters != null && logEvent.Parameters.Length > 0)
            {
                for (int p = 0; p < logEvent.Parameters.Length; p++)
                {
                    if (logEvent.Parameters[p] is OHAuditInfo)
                    {
                        auditInfo = (OHAuditInfo)logEvent.Parameters[p];
                    }
                    else
                    {
                        OHInfo info = new OHInfo(logEvent.Parameters[p], this);
                        if (info.IsLoggable)
                        {
                            objectsToLog.Add(info);
                        }
                    }
                }

                Data.OHDbBaseClient dbClient = OHDbFactory.GetDbClient(this);

                for (int i = 0; i < objectsToLog.Count; i++)
                {
                    if (auditInfo != null)
                    {
                        objectsToLog[i].User = auditInfo.UserName;
                    }
                    dbClient.SaveObject(objectsToLog[i], this);
                }

            }

            string cs = ConnectionString;

        }
        public void ValidateMandatoryOptions()
        {
            if (string.IsNullOrEmpty(ConnectionString))
            {
                throw new Exception("OHTarget needs the ConnectionString option defined.");
            }

            if (string.IsNullOrEmpty(DbProviderInvariantName))
            {
                throw new Exception("OHTarget needs the DbProviderInvariantName option defined.");
            }

        }

        public void CreateDatabase()
        {

            ValidateMandatoryOptions();
            Data.OHDbBaseClient dbClient = OHDbFactory.GetDbClient(this);
            dbClient.CreateDBSchema();
        }

        public XMLConfiguration XmlConfiguration()
        {
            return new XMLConfiguration(this);
        }


    }
}
