using System;
using System.Collections.Generic;
using System.Reflection;
using System.IO;

namespace App.Logger.Targets.ObjectHistoryLogger.Data.DBScripts
{
    internal class ScriptFileNameComparer : IComparer<string>
    {
        #region IComparer<string> Members

        public int Compare(string x, string y)
        {
            string type1 = x.Split('-')[0].ToLower();
            Version version1 = new Version(x.Split('-')[1].Trim().ToLower().Replace("v", ""));
            string type2 = y.Split('-')[0].ToLower();
            Version version2 = new Version(y.Split('-')[1].Trim().ToLower().Replace("v", ""));

            if (type1.Equals(type2))
            {
                return version1.CompareTo(version2);
            }
            else
            {
                return 0;
            }
        }

        #endregion
    }
}
