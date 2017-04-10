<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="RequestBook.aspx.cs" Inherits="LibraryManagementSystem.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Request Book
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
    
    <form class="form-group" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="form-group col-sm-6">
            <div class="form-group">
                <h2 style="text-align: center; color: midnightblue">Request Book</h2>
            </div>
            <div>
                <asp:Label ID="lblSuccess" runat="server" Text="" CssClass="alert-success" ></asp:Label>
                <asp:Label ID="lblFailed" runat="server" Text="" CssClass="alert-danger"></asp:Label>
            </div>
            

            <div class="">
                <span>Book Name </span>
            </div>
            <div class="form-group ">
                <asp:TextBox CssClass="form-control col-sm-3" ID="txtBookName" runat="server" ToolTip="Enter Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdBookName" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtBookName" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Author </span>
            </div>
            <div class="form-group ">
                <asp:TextBox CssClass="form-control col-sm-3" ID="txtAuthor" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdregNo" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtAuthor" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Subject </span>
            </div>
            <div class="form-group ">
                <asp:TextBox CssClass="form-control col-sm-3" ID="txtSubject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdSubject" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtSubject" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>           
            <br/>
            &nbsp;
            <div class="form-group">
            <asp:Button CssClass="btn btn-success" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"   />
                <asp:Button CssClass="btn btn-danger" ID="btnCancel" runat="server" Text="Clear" CausesValidation="False" OnClick="btnCancel_Click" />
            </div>


        </div>

    </form>
</asp:Content>
