<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNewProduct.aspx.cs" Inherits="TechnoSteel.AdminPages.AddNewProduct" %>

<%@ Register Src="~/Controls/ctrl_AddProduct.ascx" TagPrefix="uc1" TagName="ctrl_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <uc1:ctrl_AddProduct runat="server" id="ctrl_AddProduct" />
</asp:Content>
