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
    public partial class AdminRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string adminName = txtAdminName.Text;
            string adminPassword = txtAdminPassword.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["Tenders"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO AdminRegistered (Email, AdminName, AdminPassword) VALUES (@Email, @AdminName, @AdminPassword)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@AdminName", adminName);
                    cmd.Parameters.AddWithValue("@AdminPassword", adminPassword);
                    con.Open();
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        lblMessage.Text = "Registration successful.";
                        Response.Redirect("Adminlogin.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Registration failed.";
                    }
                }
            }
        }
    }
}