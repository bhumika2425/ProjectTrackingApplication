<%@ Page Title="ProjectDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="ProjectTrackingApp.ProjectDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
                        <style>
    /* Global Styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    main {
        padding: 30px;
        background-color: white;
        max-width: 1200px;
        margin: 30px auto;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    h1 {
        font-size: 24px;
        font-weight: 600;
        margin-bottom: 20px;
        color: #333;
    }

    .container {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        width: 100%;
    }
    /* FormView Styles */
    .formview-container {
        padding: 20px;
        background-color: #ffffff;
        border-radius: 8px;
    }

    .formview-container label {
        font-weight: bold;
        color: #555;

    }

    .formview-container input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
        color: #333;
        background-color: #f9f9f9;
    }

    .formview-container input[type="text"]:focus {
        border-color: #007bff;
        background-color: #fff;
    }

    .formview-container .linkbutton {
        font-size: 14px;
        color: #007bff;
        background-color: transparent;
        border: none;
        cursor: pointer;
        padding: 8px 12px;
        text-decoration: none;
        border-radius: 5px;
    }

    .formview-container .linkbutton:hover {
        background-color: #f1f1f1;
    }

    /* GridView Styles */
    .table-responsive {
        margin-left: 30px;
        background-color: white;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .table-responsive table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        margin: 0;
        color: #333;
    }

    .table-responsive th,
    .table-responsive td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    .table-responsive th {
        background-color: #f8f8f8;
        font-weight: 600;
    }

    .table-responsive tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .table-responsive td {
        font-size: 16px;
    }

    .table-responsive .btn {
        font-size: 14px;
        color: white;
        background-color: #007bff;
        padding: 6px 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .table-responsive .btn:hover {
        background-color: #0056b3;
    }

    .table-responsive .command-buttons {
        text-align: center;
    }

    /* Button Styles */
    .table-responsive .edit-btn,
    .table-responsive .delete-btn {
        background-color: #28a745;
        color: white;
        padding: 6px 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .table-responsive .edit-btn:hover,
    .table-responsive .delete-btn:hover {
        background-color: #218838;
    }

    .table-responsive .delete-btn {
        background-color: #dc3545;
    }

    .table-responsive .delete-btn:hover {
        background-color: #c82333;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        main {
            padding: 15px;
        }

        .formview-container {
            padding: 15px;
        }

        .table-responsive {
            margin-top: 20px;
        }

        .table-responsive table {
            font-size: 14px;
        }

        .table-responsive th, .table-responsive td {
            padding: 8px;
        }
    }
</style>
       <div class="container">
                   <asp:FormView ID="FormView1" runat="server" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="formview-container">
            <EditItemTemplate>
                PROJECT_ID:
                <asp:Label ID="PROJECT_IDLabel1" runat="server" Text='<%# Eval("PROJECT_ID") %>' />
                <br />
                PROJECT_NAME:
                <asp:TextBox ID="PROJECT_NAMETextBox" runat="server" Text='<%# Bind("PROJECT_NAME") %>' CssClass="form-input"/>
                <br />
                PROJECT_START_DATE:
                <asp:TextBox ID="PROJECT_START_DATETextBox" runat="server" Text='<%# Bind("PROJECT_START_DATE") %>' CssClass="form-input" />
                <br />
                PROJECT_DUE_DATE:
                <asp:TextBox ID="PROJECT_DUE_DATETextBox" runat="server" Text='<%# Bind("PROJECT_DUE_DATE") %>' CssClass="form-input" />
                <br />
                PROJECT_STATUS:
                <asp:TextBox ID="PROJECT_STATUSTextBox" runat="server" Text='<%# Bind("PROJECT_STATUS") %>' CssClass="form-input" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="linkbutton" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton"  />
            </EditItemTemplate>
            <InsertItemTemplate>
                PROJECT_ID:
                <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' CssClass="form-input" />
                <br />
                PROJECT_NAME:
                <asp:TextBox ID="PROJECT_NAMETextBox" runat="server" Text='<%# Bind("PROJECT_NAME") %>' CssClass="form-input" />
                <br />
                PROJECT_START_DATE:
                <asp:TextBox ID="PROJECT_START_DATETextBox" runat="server" Text='<%# Bind("PROJECT_START_DATE") %>' CssClass="form-input" />
                <br />
                PROJECT_DUE_DATE:
                <asp:TextBox ID="PROJECT_DUE_DATETextBox" runat="server" Text='<%# Bind("PROJECT_DUE_DATE") %>' CssClass="form-input"/>
                <br />
                PROJECT_STATUS:
                <asp:TextBox ID="PROJECT_STATUSTextBox" runat="server" Text='<%# Bind("PROJECT_STATUS") %>' CssClass="form-input" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="linkbutton"  />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton"  />
            </InsertItemTemplate>
            <ItemTemplate>
                PROJECT_ID:
                <asp:Label ID="PROJECT_IDLabel" runat="server" Text='<%# Eval("PROJECT_ID") %>' />
                <br />
                PROJECT_NAME:
                <asp:Label ID="PROJECT_NAMELabel" runat="server" Text='<%# Bind("PROJECT_NAME") %>' />
                <br />
                PROJECT_START_DATE:
                <asp:Label ID="PROJECT_START_DATELabel" runat="server" Text='<%# Bind("PROJECT_START_DATE") %>' />
                <br />
                PROJECT_DUE_DATE:
                <asp:Label ID="PROJECT_DUE_DATELabel" runat="server" Text='<%# Bind("PROJECT_DUE_DATE") %>' />
                <br />
                PROJECT_STATUS:
                <asp:Label ID="PROJECT_STATUSLabel" runat="server" Text='<%# Bind("PROJECT_STATUS") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="edit-btn" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="delete-btn" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="linkbutton" />
            </ItemTemplate>
</asp:FormView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1" CssClass="table-responsive">
            <Columns>
                
                <asp:BoundField DataField="PROJECT_ID" HeaderText="P_ID" ReadOnly="True" SortExpression="PROJECT_ID" />
                <asp:BoundField DataField="PROJECT_NAME" HeaderText="P_NAME" SortExpression="PROJECT_NAME" />
                <asp:BoundField DataField="PROJECT_START_DATE" HeaderText="P_START_DATE" SortExpression="PROJECT_START_DATE" />
                <asp:BoundField DataField="PROJECT_DUE_DATE" HeaderText="P_DUE_DATE" SortExpression="PROJECT_DUE_DATE" />
                <asp:BoundField DataField="PROJECT_STATUS" HeaderText="P_STATUS" SortExpression="PROJECT_STATUS" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" DeleteCommand="DELETE FROM &quot;PROJECT&quot; WHERE &quot;PROJECT_ID&quot; = :original_PROJECT_ID AND ((&quot;PROJECT_NAME&quot; = :original_PROJECT_NAME) OR (&quot;PROJECT_NAME&quot; IS NULL AND :original_PROJECT_NAME IS NULL)) AND ((&quot;PROJECT_START_DATE&quot; = :original_PROJECT_START_DATE) OR (&quot;PROJECT_START_DATE&quot; IS NULL AND :original_PROJECT_START_DATE IS NULL)) AND ((&quot;PROJECT_DUE_DATE&quot; = :original_PROJECT_DUE_DATE) OR (&quot;PROJECT_DUE_DATE&quot; IS NULL AND :original_PROJECT_DUE_DATE IS NULL)) AND ((&quot;PROJECT_STATUS&quot; = :original_PROJECT_STATUS) OR (&quot;PROJECT_STATUS&quot; IS NULL AND :original_PROJECT_STATUS IS NULL))" InsertCommand="INSERT INTO &quot;PROJECT&quot; (&quot;PROJECT_ID&quot;, &quot;PROJECT_NAME&quot;, &quot;PROJECT_START_DATE&quot;, &quot;PROJECT_DUE_DATE&quot;, &quot;PROJECT_STATUS&quot;) VALUES (:PROJECT_ID, :PROJECT_NAME, :PROJECT_START_DATE, :PROJECT_DUE_DATE, :PROJECT_STATUS)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;" UpdateCommand="UPDATE &quot;PROJECT&quot; SET &quot;PROJECT_NAME&quot; = :PROJECT_NAME, &quot;PROJECT_START_DATE&quot; = :PROJECT_START_DATE, &quot;PROJECT_DUE_DATE&quot; = :PROJECT_DUE_DATE, &quot;PROJECT_STATUS&quot; = :PROJECT_STATUS WHERE &quot;PROJECT_ID&quot; = :original_PROJECT_ID AND ((&quot;PROJECT_NAME&quot; = :original_PROJECT_NAME) OR (&quot;PROJECT_NAME&quot; IS NULL AND :original_PROJECT_NAME IS NULL)) AND ((&quot;PROJECT_START_DATE&quot; = :original_PROJECT_START_DATE) OR (&quot;PROJECT_START_DATE&quot; IS NULL AND :original_PROJECT_START_DATE IS NULL)) AND ((&quot;PROJECT_DUE_DATE&quot; = :original_PROJECT_DUE_DATE) OR (&quot;PROJECT_DUE_DATE&quot; IS NULL AND :original_PROJECT_DUE_DATE IS NULL)) AND ((&quot;PROJECT_STATUS&quot; = :original_PROJECT_STATUS) OR (&quot;PROJECT_STATUS&quot; IS NULL AND :original_PROJECT_STATUS IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PROJECT_ID" Type="String" />
            <asp:Parameter Name="original_PROJECT_NAME" Type="String" />
            <asp:Parameter Name="original_PROJECT_START_DATE" Type="String" />
            <asp:Parameter Name="original_PROJECT_DUE_DATE" Type="String" />
            <asp:Parameter Name="original_PROJECT_STATUS" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PROJECT_ID" Type="String" />
            <asp:Parameter Name="PROJECT_NAME" Type="String" />
            <asp:Parameter Name="PROJECT_START_DATE" Type="String" />
            <asp:Parameter Name="PROJECT_DUE_DATE" Type="String" />
            <asp:Parameter Name="PROJECT_STATUS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PROJECT_NAME" Type="String" />
            <asp:Parameter Name="PROJECT_START_DATE" Type="String" />
            <asp:Parameter Name="PROJECT_DUE_DATE" Type="String" />
            <asp:Parameter Name="PROJECT_STATUS" Type="String" />
            <asp:Parameter Name="original_PROJECT_ID" Type="String" />
            <asp:Parameter Name="original_PROJECT_NAME" Type="String" />
            <asp:Parameter Name="original_PROJECT_START_DATE" Type="String" />
            <asp:Parameter Name="original_PROJECT_DUE_DATE" Type="String" />
            <asp:Parameter Name="original_PROJECT_STATUS" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
           </div>
    </main>
</asp:Content>
