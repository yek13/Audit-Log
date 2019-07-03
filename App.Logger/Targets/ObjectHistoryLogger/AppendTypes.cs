using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Logger.Targets.ObjectHistoryLogger
{

	/// <summary>
	/// Defines the supported data append types
	/// </summary>
	public enum AppendTypes : int
	{
		/// <summary>
		/// Only different data will be saved.
		/// Nothing will be saved if no changes were found.
		/// </summary>
		Differential = 1,
		/// <summary>
		/// All record data will be saved.
		/// Nothing will be saved if no changes were found.
		/// </summary>
		Incremental = 2
	}

}
