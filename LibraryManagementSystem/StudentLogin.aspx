<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="LibraryManagementSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Student Login
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
        <form runat="server" class="form-group col-sm-6" >
        <div class="form-group">
            <h2 style="text-align: center;color: midnightblue">Student Login</h2>
            <div>
                <asp:Label CssClass="alert-danger" ID="lblmsg" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <div>
                <span class="glyphicon">StudentId</span>
            </div>
        <div class="form-group">
            <asp:TextBox class="form-control" ID="txtStudentId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="alert-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Student Id" ControlToValidate="txtStudentId"></asp:RequiredFieldValidator>
        </div>
            <div>
                <span class="glyphicon">Password</span>
            </div>
        <div class="form-group">
            <asp:TextBox class="form-control" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="alert-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group center-block">
            <span class="glyphicon glyphicon-log-in " aria-hidden="true"></span>
        </div>
            <div>
                <asp:Button CssClass="btn btn-success" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />
            </div>
        </div>
    </form>
</asp:Content>

