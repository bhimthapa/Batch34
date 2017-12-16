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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (txtPassword.Text == txtRePassword.Text)
            {
                // Connect to Db server and database
                SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
                //Set query
                con.Open();
                SqlCommand cmd = new SqlCommand("addUser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUserName.Text;
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = txtPassword.Text;
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Password doesn't matched";
            }



        }
    }
}