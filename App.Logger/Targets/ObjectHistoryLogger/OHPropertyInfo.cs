using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

namespace App.Logger.Targets.ObjectHistoryLogger
{
	/// <summary>
	/// Holds the info for the logged Object
	/// </summary>
	public class OHPropertyInfo
	{
		public OHPropertyInfo(string name, string value, PropertyInfo propInfo, OHInfo objInfo)
		{
			Name = name;
			ObjInfo = ObjInfo;
			PropInfo = propInfo;
			Value = value;
		}

		public string Name { get; private set; }
		public string Value { get; private set; }
		public string Type { get { return PropInfo.PropertyType.ToString(); } }
		public OHInfo ObjInfo { get; private set; }
		public PropertyInfo PropInfo { get; private set; }

		public bool IsKey
		{
			get
			{
				return ObjInfo.KeyPropertyName == Name;
			}
		}

	}
}
