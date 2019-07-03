using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using App.Logger.Targets.ObjectHistoryLogger;
using NLog;
using System.IO;

namespace App.Logger
{
	public static class NLogUtilities
	{

		
		public static List<OHTarget> GetOHTargets()
		{
			List<OHTarget> targets = new List<OHTarget>();

			NLog.Logger logger = LogManager.GetCurrentClassLogger();
			foreach (var rule in logger.Factory.Configuration.LoggingRules)
			{
				foreach (var target in rule.Targets)
				{
					if (target is OHTarget)
					{
						targets.Add((OHTarget)target);
					}
				}
			}

			return targets;
		}

	
		public static string GetNLogConfigurationFilePath()
		{
			var cfgPath = AppDomain.CurrentDomain.SetupInformation.ConfigurationFile;
			return new FileInfo(cfgPath).Directory.FullName + @"\Nlog.config";
		}

	}
}
