using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SM
{
    public partial class SMMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("Additems.aspx");
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            Response.Redirect("Purchase.aspx");

        }

        protected void btnSales_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sales.aspx");
        }

        protected void btnStock_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stock.aspx");
        }
    }
}