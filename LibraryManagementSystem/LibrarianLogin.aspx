<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="LibrarianLogin.aspx.cs" Inherits="LibraryManagementSystem.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Librarian Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftSideBar" runat="server">
            
       <div>
       <ul class="pager">
           <li ><a href="StudentLogin.aspx">Student Login</a></li><br />
           <li ><a href="LibrarianLogin.aspx">Librarian Login</a></li>           
       </ul>
   </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainSection" runat="server">
    <form runat="server" class="form-group col-sm-6">
        <div class="form-group">
            <h2 style="text-align: center;color: midnightblue">Librarian Login</h2>
        </div>
        <div class="form-group">
            <div>
                <span class="glyphicon">UserName</span>
            </div>
        <div class="form-group">
            <asp:TextBox class="form-control" ID="txtUserName" runat="server"></asp:TextBox> 
        </div>
            <div>
                <span class="glyphicon">Password</span>
            </div>
        <div class="form-group">
            <asp:TextBox class="form-control" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group center-block">
            <asp:Button Class="btn btn-default " ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> 
            <span class="glyphicon glyphicon-log-in " aria-hidden="true"></span>
        </div>
        </div>
    </form>
</asp:Content>

