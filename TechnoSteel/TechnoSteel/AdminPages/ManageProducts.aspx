<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="TechnoSteel.AdminPages.ManageProducts" %>
<%@ Register src="../Controls/ctrl_ManageProducts.ascx" tagname="ctrl_ManageProducts" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <uc1:ctrl_ManageProducts ID="ctrl_ManageProducts1" runat="server" />

</asp:Content>
