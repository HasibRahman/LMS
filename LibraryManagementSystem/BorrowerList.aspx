<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BorrowerList.aspx.cs" Inherits="LibraryManagementSystem.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="LogoutPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LeftSideBar" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MainSection" runat="server">
    <form runat="server">
        <asp:GridView ID="GridViewBorrowers" runat="server"></asp:GridView>
    </form>
</asp:Content>
