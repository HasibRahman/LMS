<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="LibraryManagementSystem.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePaceholder" runat="server">
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
                <h2 style="text-align: center; color: midnightblue">Issue Book</h2>
            </div>
            <div>
                <asp:Label ID="lblSuccess" runat="server" Text="" CssClass="alert-success"></asp:Label>
                <asp:Label ID="lblFailed" runat="server" Text="" CssClass="alert-danger"></asp:Label>
            </div>
            <div class="">
                <span>Book Code </span>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="form-group">

                        <asp:TextBox CssClass="form-control" ID="txtCode" runat="server" ToolTip="Enter Book Code " TextMode="Number" />
                        <asp:RequiredFieldValidator ID="vdcode" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtCode" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:Button CssClass="btn btn-default btn-xs" ID="btnAvailability" runat="server" Text="Check Availability" CausesValidation="False" OnClick="btnAvailability_Click" />
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                            <ProgressTemplate>
                                processing...
                            </ProgressTemplate>
                        </asp:UpdateProgress>

                        <asp:Label ID="lblAvailability" runat="server" Text=""></asp:Label>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>


            <div class="">
                <span>Student Id </span>
            </div>

            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txtStudentId" runat="server" ToolTip="Enter Full Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vdBookName" runat="server" ErrorMessage="This field is required" CssClass="alert-danger" ControlToValidate="txtStudentId" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:Button CssClass="btn btn-default btn-xs" ID="btnEligibility" runat="server" CausesValidation="False" Text="Check Eligibility" OnClick="btnEligibility_Click" />
                        <asp:Label ID="lblEligibility" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
                        <ProgressTemplate>
                            processing...
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <div class="form-group">
                        <asp:Button CssClass="btn btn-success" ID="btnIssueBook" runat="server" Text="Issue" OnClick="btnIssueBook_Click" />
                        <asp:Button CssClass="btn btn-danger" ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>



        </div>

    </form>
</asp:Content>
