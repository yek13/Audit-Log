using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Logger.Targets.ObjectHistoryLogger.Configuration;
using System.Reflection;

namespace App.Logger.Targets.ObjectHistoryLogger
{
    public class OHInfo
    {
        Object _obj = null;

        public OHInfo(object obj, OHTarget target)
        {
            _obj = obj;
            Target = target;

            if (obj != null)
            {
                ObjectType = obj.GetType();
            }

            TimeStamp = DateTime.Now;
            //User = "N/A";

            InspectObject(_obj.GetType());
        }

        public OHInfo(object obj, string user, OHTarget target)
            : this(obj, target)
        {
            User = user;
        }

        public OHInfo(Type objType, OHTarget target)
        {
            ObjectType = objType;
            Target = target;
            InspectObject(objType);
        }

     
        public OHTarget Target { get; private set; }

        
        public Object SourceObject { get { return _obj; } }

        Type _objectType = null;
       
        public Type ObjectType
        {
            get
            {
                return _objectType;
            }
            private set
            {
                _objectType = value;
            }
        }
        
        public DateTime TimeStamp { get; private set; }

        public string ObjectName { get; private set; }

        
        public bool IsLoggable { get; private set; }

        public string KeyPropertyName { get; private set; }

        
        public AppendTypes AppendType { get; set; }

        List<OHPropertyInfo> _loggableProperties = null;
       
        public List<OHPropertyInfo> LoggableProperties
        {
            get
            {
                if (_loggableProperties == null)
                    _loggableProperties = new List<OHPropertyInfo>();

                return _loggableProperties;
            }
            private set
            {
                _loggableProperties = value;
            }
        }

    
        public string User { get; set; }
        public Guid Guid { get; set; }
        public string PcName { get; set; }


        
        public string GetXML()
        {
            System.IO.StringWriter strW = new System.IO.StringWriter();
            using (System.Xml.XmlTextWriter xml = new System.Xml.XmlTextWriter(strW))
            {
                xml.WriteStartDocument();
                xml.WriteStartElement(ObjectName);

                #region SYSTEM PROPERTIES

                
                xml.WriteStartElement("__TimeStamp");   
                xml.WriteAttributeString("Type", typeof(DateTime).ToString());
                xml.WriteAttributeString("Value", TimeStamp.ToString());
                //xml.WriteValue(TimeStamp);
                xml.WriteEndElement();

                #endregion

                #region OBJECT PROPERTIES

                LoggableProperties.ForEach(prop =>
                {
                    xml.WriteStartElement(prop.Name);
                    xml.WriteAttributeString("Type", prop.PropInfo.PropertyType.ToString());
                    xml.WriteAttributeString("Value", prop.Value);
                    //xml.WriteValue(prop.Value);
                    xml.WriteEndElement();
                });

                #endregion

                xml.WriteEndElement();     
                xml.WriteEndDocument();    

                xml.Flush();
                xml.Close();
            }

            strW.Dispose();



            //System.IO.StringReader sr = new System.IO.StringReader(strW.ToString());
            //System.Xml.XmlTextReader xml = new System.Xml.XmlTextReader(sr);



            return strW.ToString();
        }

        private void InspectObject(Type objType)
        {
           
            if (!InspectObject_UsingXmlConfig(objType))
                InspectObject_UsingAttributesConfig(objType);
        }

        private bool InspectObject_UsingXmlConfig(Type objType)
        {
            bool retval = false;

            XMLTypeConfiguration cfg = Target.XmlConfiguration().GetTypeConfiguration(objType);
            if (cfg == null)
            {
                IsLoggable = false;
            }
            else
            {
                IsLoggable = true;
                retval = true;

                ObjectName = objType.FullName;
                AppendType = AppendTypes.Differential;  


                if (!string.IsNullOrEmpty(cfg.KeyProperty))
                {
                    KeyPropertyName = cfg.KeyProperty;
                    if (!cfg.Properties.Contains(KeyPropertyName))
                    {
                        cfg.Properties.Add(KeyPropertyName);
                    }
                }

                for (int i = 0; i < cfg.Properties.Count; i++)
                {
                    PropertyInfo prop = objType.GetProperty(cfg.Properties[i]);
                    if (prop != null)
                    {
                        string propValue = string.Empty;
                        if (_obj != null)
                        {
                            object _v = prop.GetValue(_obj, null);
                            propValue = _v == null ? null : _v.ToString();
                        }

                        LoggableProperties.Add(new OHPropertyInfo(prop.Name, propValue, prop, this));
                    }
                }
            }

            return retval;
        }

        private bool InspectObject_UsingAttributesConfig(Type objType)
        {
            bool retval = false;

            foreach (var attr in objType.GetCustomAttributes(true))
            {
                if (attr is LogAttribute)   
                {
                    retval = true;  

                    IsLoggable = true;
                    ObjectName = ((LogAttribute)attr).MappedName;
                    if (string.IsNullOrEmpty(ObjectName))
                    {
                        ObjectName = objType.FullName;
                    }

                    AppendType = ((LogAttribute)attr).AppendType;

                  
                    var props = objType.GetProperties();
                    foreach (var prop in props)
                    {
                        foreach (var pAttr in prop.GetCustomAttributes(true))
                        {
                            if (pAttr is LogKeyAttribute)
                            {
                                KeyPropertyName = prop.Name;
                            }

                            if (pAttr is LogPropertyAttribute)
                            {
                              
                                string propName = ((LogPropertyAttribute)pAttr).MappedName;
                                if (string.IsNullOrEmpty(propName))
                                {
                                    propName = prop.Name;
                                }

                                
                                string propValue = string.Empty;
                                if (_obj != null)
                                {
                                    object _v = prop.GetValue(_obj, null);
                                    propValue = _v == null ? null : _v.ToString();
                                }

                               
                                LoggableProperties.Add(new OHPropertyInfo(propName, propValue, prop, this));
                            }
                        }
                    }

               
                    if (string.IsNullOrEmpty(KeyPropertyName))
                    {
                        throw new MissingLogKeyAttributeException(objType);
                    }

                }
            }

            return retval;
        }

    }
}
