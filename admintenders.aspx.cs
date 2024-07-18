using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace AIRPORT_HOTEL
{
    public partial class admintenders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bindadmintenders();
            }
        }

        // Method to bind data to GridView
        private void Bindadmintenders()
        {
            List<Tender> tenders = GetTendersFromDatabase();
            gvadmintenders.DataSource = tenders;
            gvadmintenders.DataBind();
        }

        // Event handler for the Download button in GridView
        protected void btnDownload_Click(object sender, EventArgs e)
        {
            LinkButton btnDownload = (LinkButton)sender;
            string documentPath = btnDownload.CommandArgument;

            string filePath = Server.MapPath("~/Uploads/" + documentPath);

            if (File.Exists(filePath))
            {
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + documentPath);
                Response.TransmitFile(filePath);
                Response.End();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "FileNotFound", "alert('File not found.');", true);
            }
        }

        // Method to determine status based on expiry date
        protected string GetStatus(object expiryDateObj)
        {
            if (expiryDateObj != null && expiryDateObj != DBNull.Value)
            {
                DateTime expiryDate = (DateTime)expiryDateObj;
                return expiryDate < DateTime.Now ? "EXPIRED" : "ACTIVE";
            }
            return "";
        }

        // Method to fetch data from database
        private List<Tender> GetTendersFromDatabase()
        {
            List<Tender> tenders = new List<Tender>();

            string connectionString = "Data Source=DESKTOP-NECUO9J;Initial Catalog=Tenders;Integrated Security=True";
            string query = "SELECT ID, Title, Thumbnail, UploadDate, ExpiryDate, Document FROM AdminUploads";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Tender tender = new Tender
                        {
                            ID = Convert.ToInt32(reader["ID"]),
                            Title = reader["Title"].ToString(),
                            Thumbnail = reader["Thumbnail"].ToString(),
                            UploadDate = Convert.ToDateTime(reader["UploadDate"]),
                            ExpiryDate = Convert.ToDateTime(reader["ExpiryDate"]),
                            Document = reader["Document"].ToString()
                        };
                        tenders.Add(tender);
                    }

                    reader.Close();
                }
            }

            return tenders;
        }

        // Class to hold Tender information
        public class Tender
        {
            public int ID { get; set; }
            public string Title { get; set; }
            public string Thumbnail { get; set; }
            public DateTime UploadDate { get; set; }
            public DateTime ExpiryDate { get; set; }
            public string Document { get; set; }
        }

        protected void gvadmintenders_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvadmintenders.EditIndex = e.NewEditIndex;
            Bindadmintenders();
        }

        protected void gvadmintenders_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvadmintenders.Rows[e.RowIndex];
            string document = gvadmintenders.DataKeys[e.RowIndex].Value.ToString(); // Get the document name of the row

            TextBox txtTitle = row.FindControl("txtTitle") as TextBox;
            TextBox txtUploadDate = row.FindControl("txtUploadDate") as TextBox;
            TextBox txtExpiryDate = row.FindControl("txtExpiryDate") as TextBox;

            if (txtTitle != null && txtUploadDate != null && txtExpiryDate != null)
            {
                string newTitle = txtTitle.Text;
                DateTime newUploadDate;
                DateTime newExpiryDate;

                if (DateTime.TryParse(txtUploadDate.Text, out newUploadDate) && DateTime.TryParse(txtExpiryDate.Text, out newExpiryDate))
                {
                    UpdateTender(document, newTitle, newUploadDate, newExpiryDate);

                    gvadmintenders.EditIndex = -1;
                    Bindadmintenders();
                }
                else
                {
                    // Handle invalid date formats or other validation errors
                    ClientScript.RegisterStartupScript(this.GetType(), "DateError", "alert('Invalid date format. Please enter dates in correct format.');", true);
                }
            }
        }

        private void UpdateTender(string document, string newTitle, DateTime newUploadDate, DateTime newExpiryDate)
        {
            string connectionString = "Data Source=DESKTOP-NECUO9J;Initial Catalog=Tenders;Integrated Security=True";
            string query = "UPDATE AdminUploads SET Title = @Title, UploadDate = @UploadDate, ExpiryDate = @ExpiryDate WHERE Document = @Document";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Title", newTitle);
                    command.Parameters.AddWithValue("@UploadDate", newUploadDate);
                    command.Parameters.AddWithValue("@ExpiryDate", newExpiryDate);
                    command.Parameters.AddWithValue("@Document", document);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        protected void gvadmintenders_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvadmintenders.EditIndex = -1;
            Bindadmintenders();
        }

        protected void gvadmintenders_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string document = gvadmintenders.DataKeys[e.RowIndex].Value.ToString(); // Get the document name of the row

            DeleteTender(document);

            Bindadmintenders();
        }

        private void DeleteTender(string document)
        {
            string connectionString = "Data Source=DESKTOP-NECUO9J;Initial Catalog=Tenders;Integrated Security=True";
            string query = "DELETE FROM AdminUploads WHERE Document = @Document";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Document", document);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}
