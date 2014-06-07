<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrl_ManageProducts.ascx.cs" Inherits="TechnoSteel.Controls.ctrl_ManageProducts" %>
<asp:GridView ID="grd_Products" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowDeleting="grd_Products_RowDeleting" Width="70%">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Product Name" />
        <asp:BoundField DataField="Model" HeaderText="Product Model" />
        <asp:BoundField DataField="ProductCategory.Name" HeaderText="Product Category" />
        <asp:BoundField DataField="ProductImage.ImageName" HeaderText="Product Image" />
        <asp:CommandField HeaderText="Delete Product" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
