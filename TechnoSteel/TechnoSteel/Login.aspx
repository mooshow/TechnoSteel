<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TechnoSteel.Login" %>

<%@ Register Src="~/Controls/ctrl_login.ascx" TagPrefix="uc1" TagName="ctrl_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <uc1:ctrl_login runat="server" id="ctrl_login" />
</asp:Content>
