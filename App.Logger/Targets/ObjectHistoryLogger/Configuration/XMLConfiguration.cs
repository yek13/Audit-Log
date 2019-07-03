using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Xml;

namespace App.Logger.Targets.ObjectHistoryLogger.Configuration
{
    public class XMLConfiguration : List<XMLTypeConfiguration>
    {
        OHTarget target = null;
        public XMLConfiguration(OHTarget target)
        {
            this.target = target;
            ReadXml();
        }

        public XMLTypeConfiguration GetTypeConfiguration(Type type)
        {
            var q = (from cfg in this
                     where (string.IsNullOrEmpty(cfg.TypeName) ? string.Empty : cfg.TypeName) == type.FullName.ToString()
                     select cfg).ToList();

            if (q.Count() == 1)
            {
                return q[0];
            }
            else if (q.Count() >= 1)
            {
                throw new MultipleXmlConfigurationsForTheSameTypeException();
            }

            return null;
        }



        private void ReadXml()
        {
            string LogTypes = target.LogTypes;

            if (!string.IsNullOrEmpty(LogTypes))
            {
                LogTypes = LogTypes.Trim();
                string[] types = LogTypes.Split('|');

                foreach (string type in types)
                {
                    string typeName = string.Empty;
                    string keyProperty = string.Empty;
                    List<string> properties = new List<string>();

                    string[] items = type.Split(';');

                    foreach (string item in items)
                    {
                        string[] cfgP = item.Split(':');
                        if (cfgP != null && cfgP.Length == 2)
                        {
                            switch (cfgP[0].ToLower())
                            {
                                case "name":
                                    typeName = cfgP[1];
                                    break;
                                case "key":
                                    keyProperty = cfgP[1];
                                    break;
                                case "properties":
                                    string[] props = cfgP[1].Split(',');
                                    foreach (string prop in props)
                                    {
                                        properties.Add(prop);
                                    }
                                    break;
                                default:
                                    break;
                            }
                        }
                    }

                    XMLTypeConfiguration typeConfig = new XMLTypeConfiguration(typeName, keyProperty, properties);
                    this.Add(typeConfig);
                }
            }
        }
    }
}
