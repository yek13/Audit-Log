using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Logger.Targets.ObjectHistoryLogger
{
	/// <summary>
	/// Class that holds the extra information of a logging process.
	/// </summary>
	public class OHAuditInfo
	{

		public string UserName { get; set; }

        public Guid Guid { get; set; }
        public string PcName { get; set; }

    }
}
