<%@ Page Title="MilestoneDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MilestoneDetails.aspx.cs" Inherits="ProjectTrackingApp.MilestoneDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="d-flex justify-content-center align-items-center mt-3">
            <div class="card shadow-lg p-4" style="max-width: 400px; width: 100%; border-radius: 12px; background-color: #f3f4f6;">
                <div class="card-header text-center" style="background-color: transparent; border-bottom: none;">
                    <h4 class="mb-0" style="color: #374151;">Milestone Details</h4>
                </div>
                <div class="card-body">
                    <asp:Panel ID="UserFormPanel" runat="server">
                        <!-- Project Name -->
                        <div class="mb-3">
                            <label for="txtProjectName" class="form-label fw-bold" style="color: #4b5563;">Milestone Name:</label>
                            <asp:TextBox ID="txtProjectName" runat="server" CssClass="form-control" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>

                        <!-- Project Start Date -->
                        <div class="mb-3">
                            <label for="txtStartDate" class="form-label fw-bold" style="color: #4b5563;">Milestone Start Date:</label>
                            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>

                        <!-- Project Due Date -->
                        <div class="mb-3">
                            <label for="txtDueDate" class="form-label fw-bold" style="color: #4b5563;">Milestone Due Date:</label>
                            <asp:TextBox ID="txtDueDate" runat="server" CssClass="form-control" TextMode="Date" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>

                        <!-- Project Status -->
                        <div class="mb-3">
                            <label for="ddlMilestonetStatus" class="form-label fw-bold" style="color: #4b5563;">Milestone Status:</label>
                            <div class="input-group">
                                <asp:DropDownList ID="ddlProjectStatus" runat="server" CssClass="form-control" style="width: 100%; max-width: 400px; border-radius: 8px;">
                                    <asp:ListItem Text="Not Started" Value="Not Started"></asp:ListItem>
                                    <asp:ListItem Text="In Progress" Value="In Progress"></asp:ListItem>
                                    <asp:ListItem Text="Completed" Value="Completed"></asp:ListItem>
                                    <asp:ListItem Text="On Hold" Value="On Hold"></asp:ListItem>
                                </asp:DropDownList>
                                <span class="input-group-text" style="background-color: #f3f4f6; border: none;">
                                    <i class="fas fa-caret-down"></i>
                                </span>
                            </div>
                        </div>

                        <!-- Action Buttons -->
                        <div class="d-flex justify-content-between mt-4">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn" Text="Submit" style="background-color: #008000; color: white; border-radius: 8px; padding: 8px 20px;" />
                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn mx-2" Text="Update" style="background-color: #fbbf24; color: white; border-radius: 8px; padding: 8px 20px;" />
                            <asp:Button ID="btnDelete" runat="server" CssClass="btn" Text="Delete" style="background-color: #ef4444; color: white; border-radius: 8px; padding: 8px 20px;" />
                        </div>
                    </asp:Panel>
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success mt-3 text-center" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
