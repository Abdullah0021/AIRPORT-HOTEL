<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminUploadFiles.aspx.cs" Inherits="AIRPORT_HOTEL.AdminUploadFiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
      /*  body {
            background-color: #c6b452;
            font-family: Arial, sans-serif;
        }*/
        .container {
            padding-top: 40px;
           
        }
        h2 {
            color: black;
        }
        .file-upload-row {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        .file-upload-row th, .file-upload-row td {
            border: 1px solid #429342;
            padding: 10px;
            text-align: center;
        }
        .file-upload-row th {
            background-color: #429342;
            color: antiquewhite;
        }
        .file-upload-label {
            font-weight: bold;
            font-size: 18px;
            display: block;
            margin-bottom: 10px;
        }
        .file-upload-input {
            width: 100%;
            height: 40px;
            font-size: 16px;
            padding: 5px;
            margin-bottom: 20px;
        }
        .file-upload-button {
            background-color: #054305;
            color: antiquewhite;
            font-weight: bold;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        .file-upload-button:hover {
            background-color: #429342;
            color: white;
        }
        .message-label {
            font-weight: bold;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>File Uploading</h2>
                <hr />
            </div>
        </div>
        <div class="row file-upload-row">
            <div class="col-md-4">
                <asp:Label ID="lblSelectFile" runat="server" Text="Select File" CssClass="file-upload-label"></asp:Label>
                <asp:FileUpload ID="FuFileUpload" runat="server" CssClass="file-upload-input" />
            </div>
            <div class="col-md-4">
                <asp:Button ID="btnUpload" runat="server" Text="Upload File" OnClick="btnUpload_Click" CssClass="file-upload-button" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:Label ID="lblMessage" runat="server" CssClass="message-label"></asp:Label>
                <hr />
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <h2>Image Uploading</h2>
                <hr />
            </div>
        </div>
        <div class="row file-upload-row">
            <div class="col-md-4">
                <asp:Label ID="Label1" runat="server" Text="Select Image" CssClass="file-upload-label"></asp:Label>
                <asp:FileUpload ID="ImageUpload" runat="server" CssClass="file-upload-input" />
            </div>
            <div class="col-md-4">
                <asp:Button ID="Button1" runat="server" Text="Upload Image" OnClick="btnUploadImage_Click" CssClass="file-upload-button" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:Label ID="lblMessage2" runat="server" CssClass="message-label"></asp:Label>
                <hr />
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7H+uWibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</asp:Content>
