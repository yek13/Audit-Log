using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Logger.Targets.ObjectHistoryLogger.Data
{
	public static class OHDbFactory
	{

		public static OHDbBaseClient GetDbClient(OHTarget target)
		{
			switch (target.DbProviderInvariantName)
			{
				case "Npgsql":
					return new OHSqlClient(target);
				default:
					throw new Exception("Specified provider not supported.\n\nProvider: " + target.DbProviderInvariantName);
			}
		}

	}
}
