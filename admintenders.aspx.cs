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

        private void Bindadmintenders()
        {
            List<Tender> tenders = GetTendersFromDatabase();

            gvadmintenders.DataSource = tenders;
            gvadmintenders.DataBind();
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            LinkButton btnDownload = (LinkButton)sender;
            string documentPath = btnDownload.CommandArgument;

            // Determine the file path
            string filePath = Server.MapPath("~/Uploads/" + documentPath);

            // Check if the file exists
            if (File.Exists(filePath))
            {
                // Provide the file for download
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + documentPath);
                Response.TransmitFile(filePath);
                Response.End();
            }
            else
            {
                // File not found
                ClientScript.RegisterStartupScript(this.GetType(), "FileNotFound", "alert('File not found.');", true);
            }
        }


        protected string GetStatus(object expiryDateObj)
        {
            if (expiryDateObj != null && expiryDateObj != DBNull.Value)
            {
                DateTime expiryDate = (DateTime)expiryDateObj;
                return expiryDate < DateTime.Now ? "EXPIRED" : "";
            }
            return "";
        }



        private List<Tender> GetTendersFromDatabase()
        {
            List<Tender> tenders = new List<Tender>();

            // Replace with your connection string
            string connectionString = "Data Source=DESKTOP-AIG1MD4\\SQLEXPRESS;Initial Catalog=Tenders;Integrated Security=True";

            // SQL query to retrieve data
            string query = "SELECT Title, Thumbnail, UploadDate, ExpiryDate, Document FROM AdminUploads";

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
                            Title = reader["Title"].ToString(),
                            Thumbnail = reader["Thumbnail"].ToString(),
                            UploadDate = Convert.ToDateTime(reader["UploadDate"]),
                            ExpiryDate = Convert.ToDateTime(reader["ExpiryDate"]),
                            DocumentPath = reader["Document"].ToString() // Add Document path
                        };
                        tenders.Add(tender);
                    }

                    reader.Close();
                }
            }

            return tenders;
        }

        public class Tender
        {
            public string Title { get; set; }
            public string Thumbnail { get; set; }
            public DateTime UploadDate { get; set; }
            public DateTime ExpiryDate { get; set; }
            public string DocumentPath { get; set; }
            public string Document { get; set; }// Include Document path
        }
    }
}
