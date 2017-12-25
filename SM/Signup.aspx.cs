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
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("getUserNames", con);
                SqlDataReader rd = cmd.ExecuteReader();

                ddlUserNames.DataSource = rd;
                ddlUserNames.DataValueField = "username";
                ddlUserNames.DataTextField = "username";
                ddlUserNames.DataBind();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (txtPassword.Text == txtRePassword.Text)
            {
                // Connect to Db server and database
                SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
                //Set query
                con.Open();
                SqlCommand cmd = new SqlCommand("adduserdetail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@first_name", SqlDbType.VarChar, 50).Value = txtFirstName.Text;
                cmd.Parameters.Add("@last_name", SqlDbType.VarChar, 50).Value = txtLastName.Text;
                cmd.Parameters.Add("@street", SqlDbType.VarChar, 50).Value = txtStreet.Text;
                cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = txtCity.Text;
                cmd.Parameters.Add("@statename", SqlDbType.VarChar, 50).Value = txtState.Text;
                cmd.Parameters.Add("@zip", SqlDbType.VarChar, 50).Value = txtZip.Text;
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtEmail.Text;
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUserName.Text;
                cmd.Parameters.Add("@userpassword", SqlDbType.VarChar, 50).Value = txtPassword.Text;
                cmd.Parameters.Add("@retypeuserpassword", SqlDbType.VarChar, 50).Value = txtRePassword.Text;


                cmd.ExecuteNonQuery();

                //con.Close();
                //con.Open();
                //SqlCommand cmd1 = new SqlCommand("addUser", con);
                //cmd1.CommandType = CommandType.StoredProcedure;
              
                //cmd1.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUsername.Text;
                //cmd1.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = txtPassword.Text;
               
                //cmd1.ExecuteNonQuery();


                Response.Redirect("Login.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Password doesn't matched";
            }



        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text != "")
            {
            //    Connect to Db server and database
                SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
                //Set query
                con.Open();
                SqlCommand cmd = new SqlCommand("DeleteUserDetail", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUserName.Text;



                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Password doesn't matched";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text != "")
            {
                // Connect to Db server and database
                SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
                //Set query
                con.Open();
                SqlCommand cmd = new SqlCommand("updateUserinformation", con);
                cmd.CommandType = CommandType.StoredProcedure;
                // cmd.Parameters.Add("@first_name", SqlDbType.VarChar, 50).Value = txtFirstName.Text;
                // cmd.Parameters.Add("@last_name", SqlDbType.VarChar, 50).Value = txtLastName.Text;
                cmd.Parameters.Add("@street", SqlDbType.VarChar, 50).Value = txtStreet.Text;
                cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = txtCity.Text;
                cmd.Parameters.Add("@statename", SqlDbType.VarChar, 50).Value = txtState.Text;
                cmd.Parameters.Add("@zip", SqlDbType.VarChar, 50).Value = txtZip.Text;
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtEmail.Text;
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUserName.Text;
                //cmd.Parameters.Add("@userpassword", SqlDbType.VarChar, 50).Value = txtPassword.Text;
                //cmd.Parameters.Add("@retypeuserpassword", SqlDbType.VarChar, 50).Value = txtRePassword.Text;

                if (txtPassword.Text != "")
                {
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
else
                {
                    lblErrorMessage.Text = "Username doesn't match";
                }
            }
        }

        protected void ddlUserNames_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("getUserByUserName", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 20).Value = ddlUserNames.SelectedItem.Text;
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                txtFirstName.Text = rd.GetString(0);
                txtLastName.Text = rd.GetString(1);
                txtStreet.Text = rd.GetString(2);
                txtCity.Text = rd.GetString(3);
                txtState.Text = rd.GetString(4);
                txtZip.Text = rd.GetString(5);
                txtEmail.Text = rd.GetString(6);
                txtUserName.Text = rd.GetString(7);
                txtPassword.Text = rd.GetString(8);
                txtRePassword.Text = rd.GetString(9);

            }

        }
    }
}