using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            // Replace with your logic to fetch tenders data
            List<Tender> tenders = GetTendersFromDatabase();

            gvTenders.DataSource = tenders;
            gvTenders.DataBind();
        }

        private List<Tender> GetTendersFromDatabase()
        {
            // Replace with your database query or data retrieval logic
            // Example of returning dummy data:
            return new List<Tender>
            {
                new Tender { Title = "Tender 1", Thumbnail = "APH.jpg", UploadDate = DateTime.Now, ExpiryDate = DateTime.Now.AddDays(30) },
                new Tender { Title = "Tender 2", Thumbnail = "APHH.png", UploadDate = DateTime.Now, ExpiryDate = DateTime.Now.AddDays(45) }
            };
        }

        // Example class for Tender
        public class Tender
        {
            public string Title { get; set; }
            public string Thumbnail { get; set; }
            public DateTime UploadDate { get; set; }
            public DateTime ExpiryDate { get; set; }
        }
    }
}