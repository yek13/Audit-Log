using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Logger.Targets.ObjectHistoryLogger.Configuration
{
    public class XMLTypeConfiguration
    {
        public XMLTypeConfiguration(string typeName, string keyProperty, List<string> properties)
        {
            this.TypeName = typeName;
            this.KeyProperty = keyProperty;
            this.Properties = properties;
        }

        public string TypeName { get; private set; }
        public string KeyProperty { get; private set; }
        public List<string> Properties { get; private set; }
    }
}
