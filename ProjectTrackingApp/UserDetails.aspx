<%@ Page Title="UserDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="ProjectTrackingApp.UserDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="d-flex justify-content-center align-items-center mt-3">
            <div class="card shadow-lg p-4" style="max-width: 400px; width: 100%; border-radius: 12px; background-color: #f3f4f6;">
                <div class="card-header text-center" style="background-color: transparent; border-bottom: none;">
                    <h4 class="mb-0" style="color: #374151;"><i class="fas fa-user-circle"></i> User Details</h4>
                </div>
                <div class="card-body">
                    <asp:Panel ID="UserFormPanel" runat="server">
                        <!-- User Details Section - Only Removed Background Styling -->
                        <div class="mb-3">
                             <label class="form-label fw-bold" style="color: #4b5563;">User ID:</label>
                             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label fw-bold" style="color: #4b5563;">User Name:</label>
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label fw-bold" style="color: #4b5563;">User Email:</label>
                            <asp:TextBox ID="txtUserEmail" runat="server" CssClass="form-control" TextMode="Email" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label fw-bold" style="color: #4b5563;">User Contact:</label>
                            <asp:TextBox ID="txtUserContact" runat="server" CssClass="form-control" TextMode="Phone" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label fw-bold" style="color: #4b5563;">Grade ID:</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required="true" style="width: 100%; max-width: 400px; border-radius: 8px;" />
                        </div>

                        <!-- Buttons with Proper Padding and Original Colors -->
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
