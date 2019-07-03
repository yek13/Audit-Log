using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using App.Logger.Targets.ObjectHistoryLogger;

namespace App.Logger.WebTests.BusinessObjects
{
	[Log("AppCustomer", "The application customer")]
	public class Customer
	{
		[LogKey]
		[LogProperty]
		public int CustomerID { get; set; }

		[LogProperty("CustomerName", "")]
		public string Name { get; set; }

		[LogProperty]
		public string Address { get; set; }

		[LogProperty]
		public string MobilePhone { get; set; }

		[LogProperty]
		public string Fax { get; set; }

		[LogProperty]
		public DateTime StartDate { get; set; }
	}
}
