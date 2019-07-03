using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Logger.Targets.ObjectHistoryLogger
{
	public class MissingLogKeyAttributeException : Exception
	{

		public MissingLogKeyAttributeException(Type objType)
			: base(string.Format("The object type [{0}] does not have a property decorated with the LogKeyAttribute.", 
				objType == null ? "NULL" : objType.ToString()))
		{

		}

	}
}
