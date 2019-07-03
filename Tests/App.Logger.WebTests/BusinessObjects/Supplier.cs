using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App.Logger.WebTests.BusinessObjects
{
	public class Supplier
	{

		public int SupplierID { get; set; }
		public string CompanyName { get; set; }
		public string InvoicingAddress { get; set; }
		public decimal Balance { get; set; }

	}
}