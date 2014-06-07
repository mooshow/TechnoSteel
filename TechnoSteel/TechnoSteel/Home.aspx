<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TechnoSteel.Home" %>
<%@ Register src="Controls/HomeProducts.ascx" tagname="HomeProducts" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <uc1:HomeProducts ID="HomeProducts1" runat="server" />
</asp:Content>
