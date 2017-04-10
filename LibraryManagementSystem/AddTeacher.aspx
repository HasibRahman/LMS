<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="LibraryManagementSystem.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Add Teacher
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="navbarPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LogoutPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="LeftSideBar" runat="server">
<div>
        <ul class="pager">
            <li><a href="AddTeacher.aspx">Add Teacher</a></li>
            <li><a href="ManageBooks.aspx">Edit Teachers</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainSection" runat="server">
    <form class="form-group " style="width: 100%" runat="server">
        <div class="form-group col-sm-6 ">
            <div class="form-group">
                <h2 style="text-align: center; color: midnightblue">Add Teacher</h2>
            </div>
            <div class="">
                <span>Teacher ID </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtTeacherId" runat="server" ToolTip="Enter University Teacher ID "></asp:TextBox>
            </div>

            <div class="">
                <span>Teacher Name </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtTeacherName" runat="server" ToolTip="Enter Full Name"></asp:TextBox>
            </div>

            <div class="">
                <span>Designation </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtDesignation" runat="server"></asp:TextBox>
            </div>

            <div class="">
                <span>Branch </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtBranch" runat="server"></asp:TextBox>
            </div>

            <div class="">
                <span>Contact No  </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtContact" runat="server"></asp:TextBox>
            </div>
            
            <div class="">
                <span>Username </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server"></asp:TextBox>
            </div>
            <div class="">
                <span>Password </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server"></asp:TextBox>
            </div>

            <div class="">
                <span>Confirm Password </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtConfirmPassword" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button CssClass="btn btn-success" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                <asp:Button CssClass="btn btn-danger" ID="btnCancel" runat="server" Text="cancel" OnClick="btnCancel_Click" />
            </div>
        </div>

    </form>
</asp:Content>

