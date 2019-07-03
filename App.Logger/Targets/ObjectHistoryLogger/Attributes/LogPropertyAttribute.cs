using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Logger.Targets.ObjectHistoryLogger
{
    [global::System.AttributeUsage(AttributeTargets.Property, Inherited = false, AllowMultiple = false)]
    public sealed class LogPropertyAttribute : Attribute
    {

       
        public LogPropertyAttribute()
        {
            MappedName = string.Empty;
            Description = string.Empty;
        }

        
        public LogPropertyAttribute(string mappedName, string description)
        {
            MappedName = mappedName;
            Description = description;
        }

        
        public string MappedName { get; private set; }

        
        public string Description { get; private set; }

    }
}
