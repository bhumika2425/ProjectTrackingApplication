<%@ Page Title="MilestoneDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MilestoneDetails.aspx.cs" Inherits="ProjectTrackingApp.MilestoneDetails" %>

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
               <asp:FormView ID="FormView1" runat="server" DataKeyNames="MILESTONE_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="formview-container">
        <EditItemTemplate>
            MILESTONE_ID:
            <asp:Label ID="MILESTONE_IDLabel1" runat="server" Text='<%# Eval("MILESTONE_ID") %>' />
            <br />
            MILESTONE_NAME:
    <asp:TextBox ID="MILESTONE_NAMETextBox" runat="server" Text='<%# Bind("MILESTONE_NAME") %>' CssClass="form-input" />
    <br />
    DUE_DATE:
    <asp:TextBox ID="DUE_DATETextBox" runat="server" Text='<%# Bind("DUE_DATE") %>' CssClass="form-input" />
    <br />
    PROJECT_ID:
    <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' CssClass="form-input" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="linkbutton" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MILESTONE_ID:
    <asp:TextBox ID="MILESTONE_IDTextBox" runat="server" Text='<%# Bind("MILESTONE_ID") %>' CssClass="form-input" />
    <br />
    MILESTONE_NAME:
    <asp:TextBox ID="MILESTONE_NAMETextBox" runat="server" Text='<%# Bind("MILESTONE_NAME") %>' CssClass="form-input" />
    <br />
    DUE_DATE:
    <asp:TextBox ID="DUE_DATETextBox" runat="server" Text='<%# Bind("DUE_DATE") %>' CssClass="form-input" />
    <br />
    PROJECT_ID:
    <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' CssClass="form-input" />
    <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="linkbutton" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton" />
        </InsertItemTemplate>
        <ItemTemplate>
            MILESTONE_ID:
            <asp:Label ID="MILESTONE_IDLabel" runat="server" Text='<%# Eval("MILESTONE_ID") %>' />
            <br />
            MILESTONE_NAME:
            <asp:Label ID="MILESTONE_NAMELabel" runat="server" Text='<%# Bind("MILESTONE_NAME") %>' />
            <br />
            DUE_DATE:
            <asp:Label ID="DUE_DATELabel" runat="server" Text='<%# Bind("DUE_DATE") %>' />
            <br />
            PROJECT_ID:
            <asp:Label ID="PROJECT_IDLabel" runat="server" Text='<%# Bind("PROJECT_ID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="edit-btn" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="delete-btn" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="linkbutton" />
        </ItemTemplate>
</asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MILESTONE_ID" DataSourceID="SqlDataSource1" CssClass="table-responsive">
        <Columns>
            
            <asp:BoundField DataField="MILESTONE_ID" HeaderText="MILESTONE_ID" ReadOnly="True" SortExpression="MILESTONE_ID" />
            <asp:BoundField DataField="MILESTONE_NAME" HeaderText="MILESTONE_NAME" SortExpression="MILESTONE_NAME" />
            <asp:BoundField DataField="DUE_DATE" HeaderText="DUE_DATE" SortExpression="DUE_DATE" />
            <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT_ID" SortExpression="PROJECT_ID" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" DeleteCommand="DELETE FROM &quot;MILESTONE&quot; WHERE &quot;MILESTONE_ID&quot; = :original_MILESTONE_ID AND ((&quot;MILESTONE_NAME&quot; = :original_MILESTONE_NAME) OR (&quot;MILESTONE_NAME&quot; IS NULL AND :original_MILESTONE_NAME IS NULL)) AND ((&quot;DUE_DATE&quot; = :original_DUE_DATE) OR (&quot;DUE_DATE&quot; IS NULL AND :original_DUE_DATE IS NULL)) AND ((&quot;PROJECT_ID&quot; = :original_PROJECT_ID) OR (&quot;PROJECT_ID&quot; IS NULL AND :original_PROJECT_ID IS NULL))" InsertCommand="INSERT INTO &quot;MILESTONE&quot; (&quot;MILESTONE_ID&quot;, &quot;MILESTONE_NAME&quot;, &quot;DUE_DATE&quot;, &quot;PROJECT_ID&quot;) VALUES (:MILESTONE_ID, :MILESTONE_NAME, :DUE_DATE, :PROJECT_ID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM &quot;MILESTONE&quot;" UpdateCommand="UPDATE &quot;MILESTONE&quot; SET &quot;MILESTONE_NAME&quot; = :MILESTONE_NAME, &quot;DUE_DATE&quot; = :DUE_DATE, &quot;PROJECT_ID&quot; = :PROJECT_ID WHERE &quot;MILESTONE_ID&quot; = :original_MILESTONE_ID AND ((&quot;MILESTONE_NAME&quot; = :original_MILESTONE_NAME) OR (&quot;MILESTONE_NAME&quot; IS NULL AND :original_MILESTONE_NAME IS NULL)) AND ((&quot;DUE_DATE&quot; = :original_DUE_DATE) OR (&quot;DUE_DATE&quot; IS NULL AND :original_DUE_DATE IS NULL)) AND ((&quot;PROJECT_ID&quot; = :original_PROJECT_ID) OR (&quot;PROJECT_ID&quot; IS NULL AND :original_PROJECT_ID IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_MILESTONE_ID" Type="String" />
        <asp:Parameter Name="original_MILESTONE_NAME" Type="String" />
        <asp:Parameter Name="original_DUE_DATE" Type="String" />
        <asp:Parameter Name="original_PROJECT_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MILESTONE_ID" Type="String" />
        <asp:Parameter Name="MILESTONE_NAME" Type="String" />
        <asp:Parameter Name="DUE_DATE" Type="String" />
        <asp:Parameter Name="PROJECT_ID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MILESTONE_NAME" Type="String" />
        <asp:Parameter Name="DUE_DATE" Type="String" />
        <asp:Parameter Name="PROJECT_ID" Type="String" />
        <asp:Parameter Name="original_MILESTONE_ID" Type="String" />
        <asp:Parameter Name="original_MILESTONE_NAME" Type="String" />
        <asp:Parameter Name="original_DUE_DATE" Type="String" />
        <asp:Parameter Name="original_PROJECT_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
       </div>
    </main>
</asp:Content>
