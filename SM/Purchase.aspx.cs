using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SM
{
    public partial class Purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("GetItemIds", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader rd = cmd.ExecuteReader();

                ddlItemIds.DataSource = rd;
                ddlItemIds.DataTextField = "ItemId";
                ddlItemIds.DataValueField = "ItemId";
                ddlItemIds.DataBind();

            }
        }

        protected void ddlitemid_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
            //Set query
            con.Open();
            SqlCommand cmd = new SqlCommand("GetItemById", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(ddlItemIds.SelectedItem.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                txtItemName.Text = rd.GetString(1);
                txtItemType.Text = rd.GetString(2);
                txtItemDescription.Text = rd.GetString(3);
            }

        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
            //Set query
            con.Open();
            SqlCommand cmd = new SqlCommand("AddPurchase", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@itemid", SqlDbType.Int).Value = Convert.ToInt32(ddlItemIds.SelectedItem.Text);
            cmd.Parameters.Add("@itemquantity", SqlDbType.Int).Value = txtItemQuantity.Text;
            cmd.Parameters.Add("@ItemPrice", SqlDbType.Float).Value = txtItemPrice.Text;
          
            cmd.ExecuteNonQuery();
            lblErrorMessage.Text = "Purchase is succesfully added";
        }
    }
}