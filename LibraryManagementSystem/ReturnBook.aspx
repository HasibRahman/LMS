<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ReturnBook.aspx.cs" Inherits="LibraryManagementSystem.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Return Book
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
    <form runat="server" class="form-group">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="form-group">
            <h2 style="text-align: center; color: midnightblue">Return Book</h2>
        </div>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="form-group">
                <div>
                    <asp:Label ID="lblMsg" runat="server" Text="" CssClass="alert-success"></asp:Label>
                </div>
                <div class="col-sm-3">
                    <asp:Label ID="Label1" runat="server" Text="Student Id"></asp:Label>
                    <asp:TextBox CssClass="form-control col-sm-3" ID="txtStudentId" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <asp:Label ID="Label2" runat="server" Text="Book Code"></asp:Label>
                    <asp:TextBox CssClass="form-control col-sm-3" ID="txtBookCode" runat="server"></asp:TextBox>
                </div>
                    <br />
                <div>
                    <asp:Button CssClass="btn btn-default " ID="btnReturnBook" runat="server" Text="Return" OnClick="btnReturnBook_Click" />
                </div>
                </div>  
                <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
                    <ProgressTemplate>Processing...</ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>



        </asp:UpdatePanel>
    </form>
</asp:Content>
