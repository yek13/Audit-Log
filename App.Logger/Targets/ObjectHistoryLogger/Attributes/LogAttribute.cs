using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Logger.Targets.ObjectHistoryLogger;

namespace App.Logger.Targets.ObjectHistoryLogger
{
    
    [global::System.AttributeUsage(AttributeTargets.Class, Inherited = false, AllowMultiple = false)]
    public sealed class LogAttribute : Attribute
    {

        public LogAttribute()
        {
            MappedName = string.Empty;
            Description = string.Empty;
            AppendType = AppendTypes.Differential;
        }

        public LogAttribute(AppendTypes appendType) : this()
        {
            AppendType = appendType;
        }

        public LogAttribute(string mappedName, string description)
        {
            MappedName = mappedName;
            Description = description;
        }

        public LogAttribute(string mappedName, string description, AppendTypes appendType) : this(mappedName, description)
        {
            AppendType = appendType;
        }

    
        public string MappedName { get; private set; }

   
        public string Description { get; private set; }

      
        public AppendTypes AppendType { get; set; }

    }
}
