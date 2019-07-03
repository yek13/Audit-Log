using System;
using System.Collections.Generic;
using System.Reflection;
using System.IO;

namespace App.Logger.Targets.ObjectHistoryLogger.Data.DBScripts
{

    public static class OHScriptManager
    {

       
        public static List<string> GetTablesScripts(OHDbBaseClient dbClient)
        {
            return GetScripts(ScriptTypes.Tables, dbClient);
        }

      
        public static List<string> GetProceduresScripts(OHDbBaseClient dbClient)
        {
            return GetScripts(ScriptTypes.Procedures, dbClient);
        }

        
        public static List<string> GetViewsScripts(OHDbBaseClient dbClient)
        {
            return GetScripts(ScriptTypes.Views, dbClient);
        }

       
        public static List<string> GetDataScripts(OHDbBaseClient dbClient)
        {
            return GetScripts(ScriptTypes.Data, dbClient);
        }

        
        public enum ScriptTypes
        {
           
            Tables = 1,
           
            Procedures = 2,
          
            Views = 3,
           
            Data = 4
        }

       
        private static List<string> GetScripts(ScriptTypes type, OHDbBaseClient dbClient)
        {
            string ObjectsPrefix = dbClient.target.DBTablesPrefix;
            string _dbScriptsContainerPath = string.IsNullOrEmpty(dbClient.DbScriptsContainerPath) ? string.Empty : dbClient.DbScriptsContainerPath;

            string filter = string.Empty;
            switch (type)
            {
                case ScriptTypes.Tables:
                    filter = "tables-v";
                    break;
                case ScriptTypes.Procedures:
                    filter = "procedures-v";
                    break;
                case ScriptTypes.Views:
                    filter = "views-v";
                    break;
                case ScriptTypes.Data:
                    filter = "data-v";
                    break;
                default:
                    break;
            }

            Assembly asm = Assembly.GetExecutingAssembly();
            string[] resNames = asm.GetManifestResourceNames();
            Stream sqlStream = null;

          
            List<string> list = new List<string>();
            if (resNames == null || resNames.Length == 0) return list;
            for (int i = 0; i < resNames.Length; i++)
            {
                if (resNames[i].StartsWith(_dbScriptsContainerPath) && resNames[i].ToLower().Contains(filter.ToLower()))
                    list.Add(resNames[i]);
            }

          
            list.Sort(new ScriptFileNameComparer());

            for (int i = 0; i < list.Count; i++)
            {
                sqlStream = asm.GetManifestResourceStream(list[i]);
                using (StreamReader sr = new StreamReader(sqlStream))
                {
                    string script = sr.ReadToEnd();                    
                    list[i] = string.Format(script, ObjectsPrefix);     
                }
            }

            return list;
        }

    }

}
