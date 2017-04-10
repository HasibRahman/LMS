<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="LibraryManagementSystem.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Add Student
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="navbarPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LogoutPlaceholder" runat="server">
    <ul class="nav navbar-nav navbar-right">
        <li><a href="Logout.aspx"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="LeftSideBar" runat="server">
    <div>
        <ul class="pager">
            <li><a href="AddStudent.aspx">Add Student</a></li>
            <li><a href="ManageStudent.aspx">Edit Student</a></li>
        </ul>
    </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainSection" runat="server">

    <form class="form-group" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="form-group col-sm-6">
            <div class="form-group">
                <h2 style="text-align: center; color: midnightblue">Add Student</h2>
            </div>
            <div>
                <asp:Label ID="lblSuccess" runat="server" Text="" CssClass="alert-success" ></asp:Label>
                <asp:Label ID="lblFailed" runat="server" Text="" CssClass="alert-danger"></asp:Label>
            </div>
            <div class="">
                <span>Student ID </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtStudentId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdstudentId" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtStudentId" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Student Name </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtStudentName" runat="server" ToolTip="Enter Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdstudentName" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtStudentName" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Registration No </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtRegNo" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdregNo" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtRegNo" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Branch </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtBranch" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdbranch" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtBranch" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Section </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtSection" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdsection" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtSection" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="">
                <span>Semester </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtSemester" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdsem" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtSemester" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="">
                <span>Year Of Admission </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtYearOfAdmission" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdadmission" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtYearOfAdmission" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="">
                <span>Username </span>
            </div>
            <div class="form-group">

                <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vduser" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtUsername" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="">
                <span>Password </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdpass" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Confirm Password </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvdcompass" runat="server" ErrorMessage="Password doesn't match" CssClass="alert-danger" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" Display="Dynamic"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="vdcompasss" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtConfirmPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                
            </div>

            <div class="form-group">
            <asp:Button CssClass="btn btn-success" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            <asp:Button CssClass="btn btn-danger" ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" />
            </div>


        </div>

    </form>
</asp:Content>

