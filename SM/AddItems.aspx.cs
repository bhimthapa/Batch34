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
    public partial class AddItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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

        protected void btnAddNew_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
            //Set query
            con.Open();
            SqlCommand cmd = new SqlCommand("AddItems", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ItemName", SqlDbType.VarChar, 50).Value = txtItemName.Text;
            cmd.Parameters.Add("@ItemType", SqlDbType.VarChar, 50).Value = txtItemType.Text;
            cmd.Parameters.Add("@ItemDescription", SqlDbType.VarChar, 50).Value = txtItemDescription.Text;
            cmd.Parameters.Add("@quantity", SqlDbType.Int).Value = txtItemQuantity.Text;
            cmd.ExecuteNonQuery();
            lblMessage.Text = "New Item is succesfully added";
        }

        protected void ddlItemIds_SelectedIndexChanged(object sender, EventArgs e)
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

        
    }
}