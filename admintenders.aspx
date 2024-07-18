<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="admintenders.aspx.cs" Inherits="AIRPORT_HOTEL.admintenders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />
    <style>
        .table-responsive {
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h2 class="text-center">Tenders List</h2>
        <div class="table-responsive">
            <asp:GridView ID="gvadmintenders" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered mt-3"
                DataKeyNames="Document" OnRowEditing="gvadmintenders_RowEditing" OnRowUpdating="gvadmintenders_RowUpdating"
                OnRowCancelingEdit="gvadmintenders_RowCancelingEdit" OnRowDeleting="gvadmintenders_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:TemplateField HeaderText="Thumbnail">
                        <ItemTemplate>
                            <asp:Image ID="imgThumbnail" runat="server" ImageUrl='<%# String.Format("~/Uploads/{0}", Eval("Thumbnail")) %>'
                                Height="50px" Width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Upload Date">
                        <ItemTemplate>
                            <asp:Label ID="lblUploadDate" runat="server" Text='<%# Bind("UploadDate", "{0:dd-MM-yyyy}") %>'></asp:Label>
                            <asp:TextBox ID="txtUploadDate" runat="server" Text='<%# Bind("UploadDate", "{0:dd-MM-yyyy}") %>' Visible="false"></asp:TextBox>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditUploadDate" runat="server" Text='<%# Bind("UploadDate", "{0:dd-MM-yyyy}") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Expiry Date">
                        <ItemTemplate>
                            <asp:Label ID="lblExpiryDate" runat="server" Text='<%# Bind("ExpiryDate", "{0:dd-MM-yyyy}") %>'></asp:Label>
                            <asp:TextBox ID="txtExpiryDate" runat="server" Text='<%# Bind("ExpiryDate", "{0:dd-MM-yyyy}") %>' Visible="false"></asp:TextBox>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditExpiryDate" runat="server" Text='<%# Bind("ExpiryDate", "{0:dd-MM-yyyy}") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <%# GetStatus(Eval("ExpiryDate")) %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Document">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDownload" runat="server" OnClick="btnDownload_Click" CommandArgument='<%# Eval("Document") %>'>Download</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="Edit" />
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />  
</asp:Content>
