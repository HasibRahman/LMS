<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageStudent.aspx.cs" Inherits="LibraryManagementSystem.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceholder" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1147px;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="navbarPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LogoutPlaceholder" runat="server">
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
    <form runat="server">
        <div class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="EntityDataSource">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-success btn-sm" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-warning btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-info btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle CssClass="col-sm-2" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId">
                    <HeaderStyle CssClass="col-sm-1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName">
                    <HeaderStyle CssClass="col-sm-2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RegNo" HeaderText="RegNo" SortExpression="RegNo">
                    <HeaderStyle CssClass="col-sm-1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch">
                    <HeaderStyle CssClass="col-sm-1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section">
                    <HeaderStyle CssClass="col-sm-1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester">
                    <HeaderStyle CssClass="col-sm-1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="YearOfAdmission" HeaderText="YearOfAdmission" SortExpression="YearOfAdmission">
                    <HeaderStyle CssClass="col-sm-1" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>

        <asp:EntityDataSource ID="EntityDataSource" runat="server" ConnectionString="name=LibraryDBContext" DefaultContainerName="LibraryDBContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tbl_student">
        </asp:EntityDataSource>

    </form>
</asp:Content>

