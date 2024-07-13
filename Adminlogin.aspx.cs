using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIRPORT_HOTEL
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string adminName = txtAdminName.Text;
            string adminPassword = txtAdminPassword.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["Tenders"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM AdminRegistered WHERE AdminName = @AdminName AND AdminPassword = @AdminPassword";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@AdminName", adminName);
                    cmd.Parameters.AddWithValue("@AdminPassword", adminPassword);
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    if (count > 0)
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Invalid admin name or password.";
                    }
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminRegister.aspx");
        }
    }
}
