<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageTeacher.aspx.cs" Inherits="LibraryManagementSystem.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
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
            <li><a href="ManageTeacher.aspx">Edit Teachers</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainSection" runat="server">
    <form class="form-group" runat="server">
        <asp:GridView ID="GridViewTeacherDtls" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TeacherId" DataSourceID="EntityDataSourceTeacher">
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
                <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" >
                <HeaderStyle CssClass="col-sm-1" />
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                <HeaderStyle CssClass="col-sm-2" />
                </asp:BoundField>
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" >
                <HeaderStyle CssClass="col-sm-2" />
                </asp:BoundField>
                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" >
                <HeaderStyle CssClass="col-sm-2" />
                </asp:BoundField>
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" >
                <HeaderStyle CssClass="col-sm-2" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>

        <asp:EntityDataSource ID="EntityDataSourceTeacher" runat="server" ConnectionString="name=LibraryDBContext" DefaultContainerName="LibraryDBContext" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tbl_teacher">
        </asp:EntityDataSource>

    </form>
</asp:Content>

