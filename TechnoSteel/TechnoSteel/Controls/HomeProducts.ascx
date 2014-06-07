<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeProducts.ascx.cs" Inherits="TechnoSteel.Controls.HomeProducts" %>
<style>
    .ProductImages {
       
       width:200px;
       height:220px
    }
</style>
<asp:Repeater ID="rpt_HomeProducts" runat="server">
    <HeaderTemplate>
        <div class="portfolio container">
            <div class="portfolio-title">
                <h3>Products</h3>
            </div>
            <div class="row">
    </HeaderTemplate>
    <ItemTemplate>
        <div class="work span3">
            <asp:Image ID="Image1" CssClass="ProductImages" runat="server" ImageUrl='<%#GetImageUrl(Convert.ToInt32(Eval("fk_ProductImageId"))) %>'/>
            <h4>
                <asp:Label ID="lbl_productName" runat="server" Text='<%#Eval("Name") %>'></asp:Label></h4>
            <p>
                <asp:Label ID="lbl_ProductDescription" runat="server" Text='<%#string.Concat(Eval("Description").ToString().Substring(0,50),"......") %>'></asp:Label></p>
            <div class="icon-awesome">
                <asp:HyperLink ID="hbl_product" runat="server" NavigateUrl='<%#string.Concat("~/ShowProduct.aspx?ProductId=",Eval("Id").ToString()) %>'>show more</asp:HyperLink>
            </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
        </div>
        </div>
    </FooterTemplate>
</asp:Repeater>
