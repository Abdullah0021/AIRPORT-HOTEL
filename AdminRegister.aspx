<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="AIRPORT_HOTEL.AdminRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Register</title>
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
            background-color: OLIVE;
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
                <img src="APHH.png" alt="Logo" style="width: 90px; height: 80px;"/>
            </div>
            <div class="header">
                <h2>Admin Register</h2>
            </div>
            <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtAdminName">Admin Name</label>
                <asp:TextBox ID="txtAdminName" runat="server" CssClass="form-control" placeholder="Enter Admin Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtAdminPassword">Password</label>
                <asp:TextBox ID="txtAdminPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            </div>
            <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-custom" Text="Register" OnClick="btnRegister_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
