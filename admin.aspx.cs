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

                // Save thumbnail file if uploaded
                if (fuThumbnail.HasFile)
                {
                    string fileName = Path.GetFileName(fuThumbnail.PostedFile.FileName);
                    fuThumbnail.SaveAs(Server.MapPath("~/Uploads/") + fileName);
                    thumbnail = fileName;
                }

                // Validate and save document (PDF only)
                string document = null;
                if (fuDocument.HasFile)
                {
                    string docFileName = Path.GetFileName(fuDocument.PostedFile.FileName);
                    if (Path.GetExtension(docFileName).ToLower() == ".pdf")
                    {
                        fuDocument.SaveAs(Server.MapPath("~/Uploads/") + docFileName);
                        document = docFileName;
                    }
                    else
                    {
                        ShowMessage("Only PDF documents are allowed.");
                        return;
                    }
                }

                DateTime uploadDate = DateTime.Now;
                DateTime expiryDate;
                if (!DateTime.TryParseExact(txtExpiryDate.Text, "dd-MM-yyyy", System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out expiryDate))
                {
                    ShowMessage("Expiry Date is not in the correct format (dd-MM-yyyy).");
                    return;
                }

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
                }

                // Show success message in alert
                string script = "alert('Upload Successful!');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
        }


        protected void btnShowTenders_Click(object sender, EventArgs e)
            {
                Response.Redirect("admintenders.aspx");
            }

            private void ShowMessage(string message)
            {
                string script = $"alert('{message}');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
            }
        }
    }