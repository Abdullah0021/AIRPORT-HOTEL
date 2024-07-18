<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="admintenders.aspx.cs" Inherits="AIRPORT_HOTEL.Tenders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h2 class="text-center">Tenders List</h2>
       <asp:GridView ID="gvadmintenders" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered mt-3" DataKeyNames="Document">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:TemplateField HeaderText="Thumbnail">
                    <ItemTemplate>
                        <asp:Image ID="imgThumbnail" runat="server" ImageUrl='<%# String.Format("~/Uploads/{0}", Eval("Thumbnail")) %>' Height="50px" Width="50px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="UploadDate" HeaderText="Upload Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <%# DateTime.Parse(Eval("ExpiryDate").ToString()) < DateTime.Now ? "EXPIRED" : "ACTIVE" %>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Document">
            <ItemTemplate>
               <asp:LinkButton ID="btnDownload" runat="server" OnClick="btnDownload_Click" CommandArgument='<%# Eval("DocumentPath") %>'>Download</asp:LinkButton>

            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>