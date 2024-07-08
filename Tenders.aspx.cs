using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace AIRPORT_HOTEL
{
    public partial class Tenders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTenders();
            }
        }

        private void BindTenders()
        {
            List<Tender> tenders = GetTendersFromDatabase();

            gvTenders.DataSource = tenders;
            gvTenders.DataBind();
        }

        private List<Tender> GetTendersFromDatabase()
        {
            List<Tender> tenders = new List<Tender>();

            // Replace with your connection string
            string connectionString = "Data Source=DESKTOP-NECUO9J;Initial Catalog=Tenders;Integrated Security=True";

            // SQL query to retrieve data
            string query = "SELECT Title, Thumbnail, UploadDate, ExpiryDate FROM AdminUploads";

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
                            ExpiryDate = Convert.ToDateTime(reader["ExpiryDate"])
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
        }
    }
}
