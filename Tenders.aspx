<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Tenders.aspx.cs" Inherits="AIRPORT_HOTEL.Tenders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h2 class="text-center">Tenders List</h2>
        <asp:GridView ID="gvTenders" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered mt-3">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:TemplateField HeaderText="Thumbnail">
                    <ItemTemplate>
                        <asp:Image ID="imgThumbnail" runat="server" ImageUrl='<%# Eval("Thumbnail", "~/Uploads/{0}") %>' Height="50px" Width="50px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="UploadDate" HeaderText="Upload Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" DataFormatString="{0:dd-MM-yyyy}" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
