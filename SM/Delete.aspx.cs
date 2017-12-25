using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SM
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=WINDOWS-5MOB6K6\\SQLEXPRESS;Initial Catalog=SMDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("DeleteUserDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUserName.Text;
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
        }
    }
}