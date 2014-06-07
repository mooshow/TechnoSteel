<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="TechnoSteel.ShowProduct" %>
<%@ Register src="Controls/ctrl_ShowProduct.ascx" tagname="ctrl_ShowProduct" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <uc1:ctrl_ShowProduct ID="ctrl_ShowProduct1" runat="server" />
</asp:Content>
