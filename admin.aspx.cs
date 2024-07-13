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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUploadDateValue.Text = DateTime.Now.ToString("dd-MM-yyyy");
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string title = txtTitle.Text;
                string thumbnail = "APH.jpg";

                if (fuThumbnail.HasFile)
                {
                    string fileName = Path.GetFileName(fuThumbnail.PostedFile.FileName);
                    fuThumbnail.SaveAs(Server.MapPath("~/Uploads/") + fileName);
                    thumbnail = fileName;
                }

                if (!fuDocument.HasFile || Path.GetExtension(fuDocument.PostedFile.FileName).ToLower() != ".pdf")
                {
                    ShowMessage("Only PDF documents are allowed.");
                    return;
                }

                string document = null;
                if (fuDocument.HasFile)
                {
                    string docFileName = Path.GetFileName(fuDocument.PostedFile.FileName);
                    fuDocument.SaveAs(Server.MapPath("~/Documents/") + docFileName);
                    document = docFileName;
                }

                DateTime uploadDate = DateTime.Now;
                DateTime expiryDate = DateTime.Parse(txtExpiryDate.Text);

                string connectionString = ConfigurationManager.ConnectionStrings["Tenders"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO AdminUploads (Title, Thumbnail, UploadDate, ExpiryDate, Document) VALUES (@Title, @Thumbnail, @UploadDate, @ExpiryDate, @Document)";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@Title", title);
                    cmd.Parameters.AddWithValue("@Thumbnail", thumbnail);
                    cmd.Parameters.AddWithValue("@UploadDate", uploadDate);
                    cmd.Parameters.AddWithValue("@ExpiryDate", expiryDate);
                    cmd.Parameters.AddWithValue("@Document", (object)document ?? DBNull.Value);

                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                }

                // Show success message in popup
                string script = "alert('Upload Successful!');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
        }

        protected void btnShowTenders_Click(object sender, EventArgs e)
        {

            Response.Redirect("Tenders.aspx");
            //string connectionString = ConfigurationManager.ConnectionStrings["Tenders"].ConnectionString;

            //using (SqlConnection connection = new SqlConnection(connectionString))
            //{
            //    string query = "SELECT Title, Thumbnail, UploadDate, ExpiryDate FROM AdminUploads";
            //    SqlCommand cmd = new SqlCommand(query, connection);
            //    connection.Open();

            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    DataTable dt = new DataTable();
            //    da.Fill(dt);

            //    gvTenders.DataSource = dt;
            //    gvTenders.DataBind();
            //    gvTenders.Visible = true;
           // }
        }

        private void ShowMessage(string message)
        {
            string script = $"alert('{message}');";
            ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
        }
    }
}
