<%@ Page  Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BookRequests.aspx.cs" Inherits="LibraryManagementSystem.WebForm18" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
    Book Requests
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
        <div class="form-group">
            <h2 style="text-align: center; color: midnightblue">Book Requests</h2>
        </div>
        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%>
                <div>
                    <div class="form-group">
                        <asp:Button CssClass="btn btn-warning" ID="btnPending" runat="server" Text="Pending" OnClick="btnPending_Click" />
                        &nbsp;
                <asp:Button CssClass="btn btn-success" ID="btnAccepted" runat="server" Text="Accepted" OnClick="btnAccepted_Click" />
                        &nbsp;
                <asp:Button CssClass="btn btn-danger" ID="btnRejected" runat="server" Text="Rejected" OnClick="btnRejected_Click" />
                        &nbsp;
                        <asp:Button CssClass="btn btn-default" ID="btnShowAll" runat="server" Text="Show All Requests" OnClick="btnShowAll_Click" />
                    </div>
                    <%--<asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
                        <ProgressTemplate>Processing</ProgressTemplate>
                    </asp:UpdateProgress>--%>
                    <br />
                    <div>
                        <asp:Label ID="lblmsg" CssClass="" runat="server" Text=""></asp:Label>   
                        <asp:GridView ID="GridViewBookRequests" runat="server" OnRowCommand="GridViewBookRequests_RowCommand1" AllowSorting="True">
                            <Columns>
                                <asp:CheckBoxField />
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:Button ID="btnAccept" runat="server" CausesValidation="false" CommandName="Accept" CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" Text="Accept" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:Button ID="btnReject" runat="server" CausesValidation="false" CommandName="Reject" CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" Text="Reject" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <br />
                    <br />
                    <div>
                        <asp:GridView ID="GridView1" runat="server" BorderColor="#CC66FF" EnableSortingAndPagingCallbacks="True"></asp:GridView>  
                    </div>

                </div>

        <%--    </ContentTemplate>
        </asp:UpdatePanel>--%>


    </form>
</asp:Content>
