﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="AIRPORT_HOTEL.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tender Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('your_background_image_url');
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }
        .btn-custom {
            background-color: olive;
            color: white;
        }
        .logo {
            position: absolute;
            top: 20px;
            left: 40px;
            width: 80px;
            height: 80px;
        }
        .header {
            text-align: center;
            margin-top: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="logo">
                <img src="APH.png" alt="Logo" style="width: 90px; height: 80px;">
            </div>
            <div class="header">
                <h2>Tender Admin Dashboard</h2>
            </div>
            <h3 class="text-center">Upload New Tender</h3>
            <div class="form-group">
                <label for="txtTitle">Title</label>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Enter Title"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="fuThumbnail">Thumbnail</label>
                <asp:FileUpload ID="fuThumbnail" runat="server" CssClass="form-control-file" />
            </div>
            <div class="form-group">
                <label for="fuDocument">Document (PDF only)</label>
                <asp:FileUpload ID="fuDocument" runat="server" CssClass="form-control-file" />
            </div>
            <div class="form-group">
                <label for="lblUploadDate">Upload Date</label>
                <asp:Label ID="lblUploadDateValue" runat="server" CssClass="form-control-plaintext"></asp:Label>
            </div>
            <div class="form-group">
                <label for="txtExpiryDate">Expiry Date</label>
                <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" placeholder="Enter Expiry Date"></asp:TextBox>
            </div>
            <asp:Button ID="btnUpload" runat="server" CssClass="btn btn-custom" Text="Upload" OnClick="btnUpload_Click" />
            <br /><br />
            <asp:Button ID="btnShowTenders" runat="server" CssClass="btn btn-custom" Text="Show Tender List" OnClick="btnShowTenders_Click" />
            <br /><br />
        </div>
    </form>
</body>
</html>
