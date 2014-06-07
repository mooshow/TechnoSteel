<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrl_ShowProduct.ascx.cs" Inherits="TechnoSteel.Controls.ctrl_ShowProduct" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        text-align:center;
        
    }
    table td {
        border:1px solid black;
    }
    .auto-style2 {
        
    }
   
</style>

<table class="auto-style1">
    <tr>
        <td colspan="2">
            <asp:Image ID="img_product" runat="server" ImageUrl='<%#GetImageForProduct() %>' />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lbl_productName" runat="server" Text="Product Name: "></asp:Label>
&nbsp;<p id="parPname" runat="server">Nothing</p>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lbl_ProductModel" runat="server" Text="Product Model: "></asp:Label>
&nbsp;<p id="parPmodel" runat="server">Nothing</p>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lbl_ProductDescription" runat="server" Text="Product Description: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <p id="parPDesc" runat="server" style="width:50%;height:50%;text-align:center">Nothing</p>
        </td>
    </tr>
</table>

