using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIRPORT_HOTEL
{
    public partial class AdminUploadFiles : System.Web.UI.Page
    {
        public partial class Uploadwithmaster : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    lblMessage.Text = string.Empty;
                    lblMessage2.Text = string.Empty;
                }
            }

            protected void btnUpload_Click(object sender, EventArgs e)
            {
                UploadFile();

            }
            protected void btnUploadImage_Click(object sender, EventArgs e)
            {
                UploadImage();

            }
            void UploadFile()
            {
                try
                {
                    if (FuFileUpload.HasFile)
                    {
                        string fileExtension = System.IO.Path.GetExtension(FuFileUpload.FileName).ToLower();

                        string[] allowedExtensions = { ".doc", ".docx", ".xls", ".xlsx", ".pdf" };

                        if (!allowedExtensions.Contains(fileExtension))
                        {
                            lblMessage.Text = "Only files with .doc, .docx, .xls, .xlsx, .pdf are allowed";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            int fileSize = FuFileUpload.PostedFile.ContentLength / 1024;
                            if (fileSize > 3072)
                            {
                                lblMessage.Text = "File size should be less than 3 mb";
                            }
                            else
                            {
                                string folderPath = Server.MapPath("~/UploadedFiles/");

                                if (!Directory.Exists(folderPath))
                                {
                                    Directory.CreateDirectory(folderPath);
                                }
                                FuFileUpload.SaveAs(folderPath + Path.GetFileName(FuFileUpload.FileName));

                                lblMessage.Text = "File " + Path.GetFileName(FuFileUpload.FileName) + " Uploaded Successfully";
                            }
                        }
                    }
                    else
                    {
                        lblMessage.Text = "PLEASE SELECT A FILE TO UPLOAD";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {

                    lblMessage.Text = ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            void UploadImage()
            {
                try
                {
                    if (ImageUpload.HasFile)
                    {
                        string fileExtension = System.IO.Path.GetExtension(ImageUpload.FileName).ToLower();

                        string[] allowedExtensions = { ".jpg", ".png", ".jpeg", ".gif" };

                        if (!allowedExtensions.Contains(fileExtension))
                        {
                            lblMessage2.Text = "Only files with .png, .jpg, .jpeg, .gif are allowed";
                            lblMessage2.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            int fileSize = ImageUpload.PostedFile.ContentLength / 1024;
                            if (fileSize > 3072)
                            {
                                lblMessage2.Text = "File size should be less than 3 mb";
                            }
                            else
                            {
                                string folderPath = Server.MapPath("~/UploadedImages/");

                                if (!Directory.Exists(folderPath))
                                {
                                    Directory.CreateDirectory(folderPath);
                                }
                                FuFileUpload.SaveAs(folderPath + Path.GetFileName(ImageUpload.FileName));

                                lblMessage2.Text = "File " + Path.GetFileName(ImageUpload.FileName) + "Image Uploaded Successfully";
                            }
                        }
                    }
                    else
                    {
                        lblMessage2.Text = "PLEASE SELECT AN IMAGE TO UPLOAD";
                        lblMessage2.ForeColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception ex)
                {

                    lblMessage2.Text = ex.Message;
                    lblMessage2.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}