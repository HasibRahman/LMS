<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="LibraryManagementSystem.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
      Add Book
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceholder" runat="server">
  
</asp:Content>
    <asp:Content ID="Content7" ContentPlaceHolderID="navbarPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="LogoutPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LeftSideBar" runat="server">
            <div>
        <ul class="pager">
            <li><a href="AddBook.aspx">Add Book</a></li>
            <li><a href="ManageBooks.aspx">Edit Book Information</a></li>
            <li><a href="BookRequest.aspx">Book Requests</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MainSection" runat="server">
            <form class="form-group" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="form-group col-sm-6">
            <div class="form-group">
                <h2 style="text-align: center; color: midnightblue">Add Book</h2>
            </div>
            <div>
                <asp:Label ID="lblSuccess" runat="server" Text="" CssClass="alert-success" ></asp:Label>
                <asp:Label ID="lblFailed" runat="server" Text="" CssClass="alert-danger"></asp:Label>
            </div>
            <div class="">
                <span>Book Code </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtCode" runat="server" ToolTip="Enter Book Code " TextMode="Number"/>
                <asp:RequiredFieldValidator ID="vdcode" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtCode" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Book Name </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtBookName" runat="server" ToolTip="Enter Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdBookName" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtBookName" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Author </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtAuthor" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdregNo" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtAuthor" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Publication </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtPublication" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdPublication" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtPublication" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>

            <div class="">
                <span>Subject </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtSubject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdSubject" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtSubject" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="">
                <span>No Of Copies </span>
            </div>
            <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="txtNoOfCopies" runat="server"  TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vdNoOfCopies" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtNoOfCopies" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>            
            
            <div class="form-group">
            <asp:Button CssClass="btn btn-success" ID="btnAddBook" runat="server" Text="Register" OnClick="btnAddBook_Click"  />
                <asp:Button CssClass="btn btn-danger" ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click1" />
            </div>


        </div>

    </form>

</asp:Content>
