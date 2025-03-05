<%@ Page Title="SubtaskDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubtaskDetails.aspx.cs" Inherits="ProjectTrackingApp.SubtaskDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="d-flex justify-content-center align-items-center mt-3">
            <div class="card shadow-lg p-4" style="max-width: 400px; width: 100%; border-radius: 12px; background-color: #f3f4f6;">
                <div class="card-header text-center" style="background-color: transparent; border-bottom: none;">
                    <h4 class="mb-0" style="color: #374151;"><i class="fas fa-tasks"></i> Subtask Details</h4>
                </div>
                <div class="card-body">
                    <asp:Panel ID="UserFormPanel" runat="server">
                        <!-- Subtask ID -->
                        <div class="mb-3">
                            <label class="form-label fw-bold" style="color: #4b5563;">Subtask ID:</label>
                            
                            <asp:TextBox ID="txtSubtaskID" runat="server" CssClass="form-control" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>

                        <!-- Subtask Name -->
                        <div class="mb-3">
                            <label class="form-label fw-bold" style="color: #4b5563;">Subtask Name:</label>
                
                                      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>

                        <!-- Subtask Status with Dropdown and Icon -->
                        <div class="mb-3">
                            <label for="ddlSubtaskStatus" class="form-label fw-bold" style="color: #4b5563;">Subtask Status:</label>
                            <asp:DropDownList ID="ddlSubtaskStatus" runat="server" CssClass="form-control" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;">
                                       
                                <asp:ListItem Text="Not Started" Value="Not Started"></asp:ListItem>
                                <asp:ListItem Text="In Progress" Value="In Progress"></asp:ListItem>
                                <asp:ListItem Text="Completed" Value="Completed"></asp:ListItem>
                                <asp:ListItem Text="On Hold" Value="On Hold"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <!-- Task ID -->
                        <div class="mb-3">
                            <label class="form-label fw-bold" style="color: #4b5563;">Task ID:</label>
                              <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>

                        <!-- Buttons (Submit, Update, Delete) -->
                        <div class="d-flex justify-content-between mt-4">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn" Text="Submit" style="background-color: #008000; color: white; border-radius: 8px; padding: 8px 20px;" />
                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn mx-2" Text="Update" style="background-color: #fbbf24; color: white; border-radius: 8px; padding: 8px 20px;" />
                            <asp:Button ID="btnDelete" runat="server" CssClass="btn" Text="Delete" style="background-color: #ef4444; color: white; border-radius: 8px; padding: 8px 20px;" />
                        </div>
                    </asp:Panel>

                    <!-- Message Label -->
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success mt-3 text-center" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
