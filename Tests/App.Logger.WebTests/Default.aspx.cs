using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NLog;
using App.Logger.Targets.ObjectHistoryLogger;
using App.Logger.Targets.ObjectHistoryLogger.Data;
using App.Logger.WebTests.BusinessObjects;
using System.Drawing;
using System.Data;
using System.Net;
using System.Diagnostics;

namespace App.Logger.WebTests
{
	public partial class _Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
        Stopwatch sw = new Stopwatch();
        protected void btnAddCustomer_Click(object sender, EventArgs e)
		{
            sw.Start();
            NLog.Logger logger = LogManager.GetCurrentClassLogger();
            string currentUsername = "Yunus Emre Kılıç";
            string pcname = Dns.GetHostName();
             Guid currentUserGuid = new Guid("{c7d8acdc-fdb0-4ee7-87ce-cfc88dc3882e}");


            for (int i = 0; i < 1; i++)
			{
				Customer customer = new Customer()
				{
					CustomerID =13 ,
					Name = "dwefızfzzzg " + i.ToString(),
					Address = "blkıjrrdhk.",
					MobilePhone = "1277328",
					StartDate = new DateTime(2004, 1, 25)
				};
            
                
                
               logger.Trace(customer);

                //  customer.Address = "dfdfrfdfnnujhtyjhscgfg";
               // customer.Address = "sfffffrfdg";
               // customer.Fax = "1235689135";
            
              //logger.Info(string.Empty, customer, new OHAuditInfo() { UserName = currentUsername, Guid = currentUserGuid, PcName = pcname });

                string strItems = "items1, item2, item3";
				string[] items = strItems.Split(',');
				List<string> ItemsList = new List<string>(items);
                TimeSpan x;
                x = sw.Elapsed;
                Label1.Text = x.ToString();


            }
        }

		protected void btnAddSupplier_Click(object sender, EventArgs e)
		{

            sw.Start();


            NLog.Logger logger = LogManager.GetCurrentClassLogger();

			for (int i = 0; i < 1; i++)
			{
				Supplier supplier = new Supplier()
				{
					CompanyName="YEK, Inc",
					Balance= 131233.23M,
					InvoicingAddress="zzzzkzzzrtfzzzz 123, q0warldsk",
					SupplierID=7
				};

				
				logger.Info(string.Empty, supplier, new OHAuditInfo() { UserName = "Admin" });  
                TimeSpan x;
                x = sw.Elapsed;
                Label1.Text = x.ToString();

            }
        }

		protected void btnGetHistory_Click(object sender, EventArgs e)
		{
			List<OHTarget> OHTargets = App.Logger.NLogUtilities.GetOHTargets();
			foreach (var target in OHTargets)
			{
				OHDbBaseClient dbClient = OHDbFactory.GetDbClient(target);

				gridResult.DataSource = dbClient.GetHistory(typeof(Supplier), "4").AsDataTable();
				gridResult.DataBind();
				break;
			}
		}

		protected void btnGetLastVersion_Click(object sender, EventArgs e)
		{
			List<OHTarget> OHTargets = App.Logger.NLogUtilities.GetOHTargets();
			foreach (var target in OHTargets)
			{
				OHDbBaseClient dbClient = OHDbFactory.GetDbClient(target);
				gridResult.DataSource = dbClient.GetLastVersion(typeof(Customer), "2").AsDataTable();
				gridResult.DataBind();
				break;
			}
		}

		protected void btnGetVersion_Click(object sender, EventArgs e)
		{
			List<OHTarget> OHTargets = App.Logger.NLogUtilities.GetOHTargets();
			foreach (var target in OHTargets)
			{
				OHDbBaseClient dbClient = OHDbFactory.GetDbClient(target);
				gridResult.DataSource = dbClient.GetVersion(typeof(Customer), "2", new DateTime(2010, 5, 22, 3, 0, 0)).AsDataTable();
				gridResult.DataBind();
				break;
			}
		}

		protected void btnCreateSchema_Click(object sender, EventArgs e)
		{
			List<OHTarget> OHTargets = App.Logger.NLogUtilities.GetOHTargets();
			foreach (var target in OHTargets)
			{
				OHDbBaseClient dbClient = OHDbFactory.GetDbClient(target);
				dbClient.CreateDBSchema();
				break;
			}
		}

		protected void btnReadXmlConfiguration_Click(object sender, EventArgs e)
		{
			List<OHTarget> OHTargets = App.Logger.NLogUtilities.GetOHTargets();
			foreach (var target in OHTargets)
			{
				var xmlConfig = target.XmlConfiguration();
			}
		}

	}
}
