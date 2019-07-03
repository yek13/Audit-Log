using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Logger.Targets.ObjectHistoryLogger
{
	public class MultipleXmlConfigurationsForTheSameTypeException : System.Exception
	{

		public MultipleXmlConfigurationsForTheSameTypeException()
			: base("Found multiple Xml configurations defined for the same type.")
		{ }

	}
}
