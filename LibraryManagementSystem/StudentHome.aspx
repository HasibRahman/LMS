<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="LibraryManagementSystem.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Student Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarPlaceHolder" runat="server">
    <li>
        <a href="#">Borrowed Books</a>
    </li>
    <li>
        <a href="#">Manage account</a>
    </li>
    <li>
        <a href="#">Request Book</a>
    </li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="LogoutPlaceholder" runat="server">
    <ul class="nav navbar-nav navbar-right">
        <li>
            <a href="Logout.aspx"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LeftSideBar" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MainSection" runat="server">
</asp:Content>
