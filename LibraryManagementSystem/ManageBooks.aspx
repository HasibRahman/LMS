<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageBooks.aspx.cs" Inherits="LibraryManagementSystem.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Manage Books
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
            <li><a href="AddBook.aspx">Add Book</a></li>
            <li><a href="BookInfo.aspx">Book List</a></li>
            <li><a href="ManageBooks.aspx">Edit Book Information</a></li>
            <li><a href="BookRequest.aspx">Book Requests</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainSection" runat="server">
    <form runat="server">
    <asp:GridView ID="GridViewBookDtls" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Code" DataSourceID="EntityDataSourceBook">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton CssClass="btn btn-success btn-sm" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton CssClass="btn btn-warning btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton CssClass="btn btn-info btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle CssClass="col-sm-2" />
            </asp:TemplateField>
            <asp:BoundField DataField="Code" HeaderText="Code" ReadOnly="True" SortExpression="Code" >
            <HeaderStyle CssClass="col-sm-2" />
            </asp:BoundField>
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" >
            <HeaderStyle CssClass="col-sm-2" />
            </asp:BoundField>
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" >
            <HeaderStyle CssClass="col-sm-2" />
            </asp:BoundField>
            <asp:BoundField DataField="Publication" HeaderText="Publication" SortExpression="Publication" >
            <HeaderStyle CssClass="col-sm-2" />
            </asp:BoundField>
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" >
            <HeaderStyle CssClass="col-sm-1" />
            </asp:BoundField>
            <asp:BoundField DataField="NoOfCopies" HeaderText="NoOfCopies" SortExpression="NoOfCopies" >
            <HeaderStyle CssClass="col-sm-1" />
            </asp:BoundField>
        </Columns>
        </asp:GridView>
        
        <asp:EntityDataSource ID="EntityDataSourceBook" runat="server" ConnectionString="name=LibraryDBContext" DefaultContainerName="LibraryDBContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tbl_book">
        </asp:EntityDataSource>
        
    </form>
</asp:Content>

