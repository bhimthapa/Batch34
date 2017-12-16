using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SM
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Connect to Db server and database
            SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
            //Set query
            con.Open();
            SqlCommand cmd = new SqlCommand("getUser", con);
            //Read data from table
            SqlDataReader rd = cmd.ExecuteReader();

            while(rd.Read())
            {
                if (txtUserName.Text == rd.GetString(1).ToString() && txtPassword.Text == rd.GetString(2).ToString())
                {
                    Response.Redirect("Home.aspx");
                }
            }
            //shdfjlsdjfds;kfjs;lfks;dlfkldsflksl;df
           
   
                lblErrorMessage.Text = "Access denied";
            btnAddUser.Visible = true;
            
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {


            Response.Redirect("Signup.aspx");
        }
    }
}