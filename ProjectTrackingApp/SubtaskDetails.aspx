<%@ Page Title="SubtaskDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubtaskDetails.aspx.cs" Inherits="ProjectTrackingApp.SubtaskDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
    <main aria-labelledby="title">
        <div class="container">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SUBTASK_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="formview-container">
            <EditItemTemplate>
                SUBTASK_ID:
                <asp:Label ID="SUBTASK_IDLabel1" runat="server" Text='<%# Eval("SUBTASK_ID") %>' />
                <br />
                SUBTASK_NAME:
                <asp:TextBox ID="SUBTASK_NAMETextBox" runat="server" Text='<%# Bind("SUBTASK_NAME") %>' CssClass="form-input" />
                <br />
                SUBTASK_STATUS:
                <asp:TextBox ID="SUBTASK_STATUSTextBox" runat="server" Text='<%# Bind("SUBTASK_STATUS") %>' CssClass="form-input"/>
                <br />
                TASK_ID:
                <asp:TextBox ID="TASK_IDTextBox" runat="server" Text='<%# Bind("TASK_ID") %>' CssClass="form-input" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="linkbutton" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton" />
            </EditItemTemplate>
            <InsertItemTemplate>
                SUBTASK_ID:
                <asp:TextBox ID="SUBTASK_IDTextBox" runat="server" Text='<%# Bind("SUBTASK_ID") %>' CssClass="form-input" />
                <br />
                SUBTASK_NAME:
                <asp:TextBox ID="SUBTASK_NAMETextBox" runat="server" Text='<%# Bind("SUBTASK_NAME") %>' CssClass="form-input"  />
                <br />
                SUBTASK_STATUS:
                <asp:TextBox ID="SUBTASK_STATUSTextBox" runat="server" Text='<%# Bind("SUBTASK_STATUS") %>' CssClass="form-input" />
                <br />
                TASK_ID:
                <asp:TextBox ID="TASK_IDTextBox" runat="server" Text='<%# Bind("TASK_ID") %>' CssClass="form-input" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="linkbutton" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton" />
            </InsertItemTemplate>
            <ItemTemplate>
                SUBTASK_ID:
                <asp:Label ID="SUBTASK_IDLabel" runat="server" Text='<%# Eval("SUBTASK_ID") %>' />
                <br />
                SUBTASK_NAME:
                <asp:Label ID="SUBTASK_NAMELabel" runat="server" Text='<%# Bind("SUBTASK_NAME") %>' />
                <br />
                SUBTASK_STATUS:
                <asp:Label ID="SUBTASK_STATUSLabel" runat="server" Text='<%# Bind("SUBTASK_STATUS") %>' />
                <br />
                TASK_ID:
                <asp:Label ID="TASK_IDLabel" runat="server" Text='<%# Bind("TASK_ID") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="edit-btn" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="delete-btn" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="linkbutton" />
            </ItemTemplate>
</asp:FormView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SUBTASK_ID" DataSourceID="SqlDataSource1" CssClass="table-responsive">
            <Columns>
                
                <asp:BoundField DataField="SUBTASK_ID" HeaderText="SUBTASK_ID" ReadOnly="True" SortExpression="SUBTASK_ID" />
                <asp:BoundField DataField="SUBTASK_NAME" HeaderText="SUBTASK_NAME" SortExpression="SUBTASK_NAME" />
                <asp:BoundField DataField="SUBTASK_STATUS" HeaderText="SUBTASK_STATUS" SortExpression="SUBTASK_STATUS" />
                <asp:BoundField DataField="TASK_ID" HeaderText="TASK_ID" SortExpression="TASK_ID" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" DeleteCommand="DELETE FROM &quot;SUBTASK&quot; WHERE &quot;SUBTASK_ID&quot; = :original_SUBTASK_ID AND ((&quot;SUBTASK_NAME&quot; = :original_SUBTASK_NAME) OR (&quot;SUBTASK_NAME&quot; IS NULL AND :original_SUBTASK_NAME IS NULL)) AND ((&quot;SUBTASK_STATUS&quot; = :original_SUBTASK_STATUS) OR (&quot;SUBTASK_STATUS&quot; IS NULL AND :original_SUBTASK_STATUS IS NULL)) AND ((&quot;TASK_ID&quot; = :original_TASK_ID) OR (&quot;TASK_ID&quot; IS NULL AND :original_TASK_ID IS NULL))" InsertCommand="INSERT INTO &quot;SUBTASK&quot; (&quot;SUBTASK_ID&quot;, &quot;SUBTASK_NAME&quot;, &quot;SUBTASK_STATUS&quot;, &quot;TASK_ID&quot;) VALUES (:SUBTASK_ID, :SUBTASK_NAME, :SUBTASK_STATUS, :TASK_ID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM &quot;SUBTASK&quot;" UpdateCommand="UPDATE &quot;SUBTASK&quot; SET &quot;SUBTASK_NAME&quot; = :SUBTASK_NAME, &quot;SUBTASK_STATUS&quot; = :SUBTASK_STATUS, &quot;TASK_ID&quot; = :TASK_ID WHERE &quot;SUBTASK_ID&quot; = :original_SUBTASK_ID AND ((&quot;SUBTASK_NAME&quot; = :original_SUBTASK_NAME) OR (&quot;SUBTASK_NAME&quot; IS NULL AND :original_SUBTASK_NAME IS NULL)) AND ((&quot;SUBTASK_STATUS&quot; = :original_SUBTASK_STATUS) OR (&quot;SUBTASK_STATUS&quot; IS NULL AND :original_SUBTASK_STATUS IS NULL)) AND ((&quot;TASK_ID&quot; = :original_TASK_ID) OR (&quot;TASK_ID&quot; IS NULL AND :original_TASK_ID IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_SUBTASK_ID" Type="String" />
            <asp:Parameter Name="original_SUBTASK_NAME" Type="String" />
            <asp:Parameter Name="original_SUBTASK_STATUS" Type="String" />
            <asp:Parameter Name="original_TASK_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SUBTASK_ID" Type="String" />
            <asp:Parameter Name="SUBTASK_NAME" Type="String" />
            <asp:Parameter Name="SUBTASK_STATUS" Type="String" />
            <asp:Parameter Name="TASK_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SUBTASK_NAME" Type="String" />
            <asp:Parameter Name="SUBTASK_STATUS" Type="String" />
            <asp:Parameter Name="TASK_ID" Type="String" />
            <asp:Parameter Name="original_SUBTASK_ID" Type="String" />
            <asp:Parameter Name="original_SUBTASK_NAME" Type="String" />
            <asp:Parameter Name="original_SUBTASK_STATUS" Type="String" />
            <asp:Parameter Name="original_TASK_ID" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
        </div>
    </main>
</asp:Content>
