<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="MainHomePage.aspx.cs" Inherits="LibraryManagementSystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Library Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftSideBar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainSection" runat="server">
    <div>
        <ul class="pager">
            <li><a href="StudentLogin.aspx">Student Login</a></li>
            
            <li><a href="LibrarianLogin.aspx">Librarian Login</a></li>
        </ul>
    </div>
</asp:Content>

