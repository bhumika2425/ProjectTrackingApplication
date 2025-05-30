﻿<%@ Page Title="TaskDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TaskDetails.aspx.cs" Inherits="ProjectTrackingApp.TaskDetails" %>

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
        max-width: 2000px;
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
        width: 30%;
        background-color: #ffffff;
        border-radius: 8px;
    }

    .formview-container label {
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
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="TASK_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="formview-container">
            <EditItemTemplate>
                <label>TASK_ID:</label><br />
        <asp:Label ID="TASK_IDLabel1" runat="server" Text='<%# Eval("TASK_ID") %>' /><br />
        
        <label>TASK_NAME:</label><br />
        <asp:TextBox ID="TASK_NAMETextBox" runat="server" Text='<%# Bind("TASK_NAME") %>' CssClass="form-input" /><br />
        
        <label>TASK_START_DATE:</label><br />
        <asp:TextBox ID="TASK_START_DATETextBox" runat="server" Text='<%# Bind("TASK_START_DATE") %>' CssClass="form-input" /><br />
        
        <label>TASK_DUE_DATE:</label><br />
        <asp:TextBox ID="TASK_DUE_DATETextBox" runat="server" Text='<%# Bind("TASK_DUE_DATE") %>' CssClass="form-input" /><br />
        
        <label>TASK_STATUS:</label><br />
        <asp:TextBox ID="TASK_STATUSTextBox" runat="server" Text='<%# Bind("TASK_STATUS") %>' CssClass="form-input" /><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="linkbutton" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <label>TASK_ID:</label><br />
        <asp:TextBox ID="TASK_IDTextBox" runat="server" Text='<%# Bind("TASK_ID") %>' CssClass="form-input" /><br />
        
        <label>TASK_NAME:</label><br />
        <asp:TextBox ID="TASK_NAMETextBox" runat="server" Text='<%# Bind("TASK_NAME") %>' CssClass="form-input" /><br />
        
        <label>TASK_START_DATE:</label><br />
        <asp:TextBox ID="TASK_START_DATETextBox" runat="server" Text='<%# Bind("TASK_START_DATE") %>' CssClass="form-input" /><br />
        
        <label>TASK_DUE_DATE:</label><br />
        <asp:TextBox ID="TASK_DUE_DATETextBox" runat="server" Text='<%# Bind("TASK_DUE_DATE") %>' CssClass="form-input" /><br />
        
        <label>TASK_STATUS:</label><br />
        <asp:TextBox ID="TASK_STATUSTextBox" runat="server" Text='<%# Bind("TASK_STATUS") %>' CssClass="form-input" /><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" Style="background-color: grey; color: white; border: none; border-radius:5px; padding: 5px 10px; font-weight: bold; cursor: pointer; text-decoration: none;"  />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Style="background-color: darkgrey; color: white; border: none; border-radius:5px; padding: 5px 10px; font-weight: bold; cursor: pointer; text-decoration: none;" />
            </InsertItemTemplate>
            <ItemTemplate>
                <label>TASK_ID:</label><br />
        <asp:Label ID="TASK_IDLabel" runat="server" Text='<%# Eval("TASK_ID") %>' /><br />
        
        <label>TASK_NAME:</label><br />
        <asp:Label ID="TASK_NAMELabel" runat="server" Text='<%# Bind("TASK_NAME") %>' /><br />
        
        <label>TASK_START_DATE:</label><br />
        <asp:Label ID="TASK_START_DATELabel" runat="server" Text='<%# Bind("TASK_START_DATE") %>' /><br />
        
        <label>TASK_DUE_DATE:</label><br />
        <asp:Label ID="TASK_DUE_DATELabel" runat="server" Text='<%# Bind("TASK_DUE_DATE") %>' /><br />
        
        <label>TASK_STATUS:</label><br />
        <asp:Label ID="TASK_STATUSLabel" runat="server" Text='<%# Bind("TASK_STATUS") %>' /><br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="edit-btn" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="delete-btn" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="linkbutton" />
            </ItemTemplate>
</asp:FormView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TASK_ID" DataSourceID="SqlDataSource1" CssClass="table-responsive">
            <Columns>
                
                <asp:BoundField DataField="TASK_ID" HeaderText="T_ID" ReadOnly="True" SortExpression="TASK_ID" />
                <asp:BoundField DataField="TASK_NAME" HeaderText="T_NAME" SortExpression="TASK_NAME" />
                <asp:BoundField DataField="TASK_START_DATE" HeaderText="T_START_DATE" SortExpression="TASK_START_DATE" />
                <asp:BoundField DataField="TASK_DUE_DATE" HeaderText="T_DUE_DATE" SortExpression="TASK_DUE_DATE" />
                <asp:BoundField DataField="TASK_STATUS" HeaderText="T_STATUS" SortExpression="TASK_STATUS" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" DeleteCommand="DELETE FROM &quot;TASK&quot; WHERE &quot;TASK_ID&quot; = :original_TASK_ID AND ((&quot;TASK_NAME&quot; = :original_TASK_NAME) OR (&quot;TASK_NAME&quot; IS NULL AND :original_TASK_NAME IS NULL)) AND ((&quot;TASK_START_DATE&quot; = :original_TASK_START_DATE) OR (&quot;TASK_START_DATE&quot; IS NULL AND :original_TASK_START_DATE IS NULL)) AND ((&quot;TASK_DUE_DATE&quot; = :original_TASK_DUE_DATE) OR (&quot;TASK_DUE_DATE&quot; IS NULL AND :original_TASK_DUE_DATE IS NULL)) AND ((&quot;TASK_STATUS&quot; = :original_TASK_STATUS) OR (&quot;TASK_STATUS&quot; IS NULL AND :original_TASK_STATUS IS NULL))" InsertCommand="INSERT INTO &quot;TASK&quot; (&quot;TASK_ID&quot;, &quot;TASK_NAME&quot;, &quot;TASK_START_DATE&quot;, &quot;TASK_DUE_DATE&quot;, &quot;TASK_STATUS&quot;) VALUES (:TASK_ID, :TASK_NAME, :TASK_START_DATE, :TASK_DUE_DATE, :TASK_STATUS)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM &quot;TASK&quot;" UpdateCommand="UPDATE &quot;TASK&quot; SET &quot;TASK_NAME&quot; = :TASK_NAME, &quot;TASK_START_DATE&quot; = :TASK_START_DATE, &quot;TASK_DUE_DATE&quot; = :TASK_DUE_DATE, &quot;TASK_STATUS&quot; = :TASK_STATUS WHERE &quot;TASK_ID&quot; = :original_TASK_ID AND ((&quot;TASK_NAME&quot; = :original_TASK_NAME) OR (&quot;TASK_NAME&quot; IS NULL AND :original_TASK_NAME IS NULL)) AND ((&quot;TASK_START_DATE&quot; = :original_TASK_START_DATE) OR (&quot;TASK_START_DATE&quot; IS NULL AND :original_TASK_START_DATE IS NULL)) AND ((&quot;TASK_DUE_DATE&quot; = :original_TASK_DUE_DATE) OR (&quot;TASK_DUE_DATE&quot; IS NULL AND :original_TASK_DUE_DATE IS NULL)) AND ((&quot;TASK_STATUS&quot; = :original_TASK_STATUS) OR (&quot;TASK_STATUS&quot; IS NULL AND :original_TASK_STATUS IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TASK_ID" Type="String" />
            <asp:Parameter Name="original_TASK_NAME" Type="String" />
            <asp:Parameter Name="original_TASK_START_DATE" Type="String" />
            <asp:Parameter Name="original_TASK_DUE_DATE" Type="String" />
            <asp:Parameter Name="original_TASK_STATUS" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TASK_ID" Type="String" />
            <asp:Parameter Name="TASK_NAME" Type="String" />
            <asp:Parameter Name="TASK_START_DATE" Type="String" />
            <asp:Parameter Name="TASK_DUE_DATE" Type="String" />
            <asp:Parameter Name="TASK_STATUS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TASK_NAME" Type="String" />
            <asp:Parameter Name="TASK_START_DATE" Type="String" />
            <asp:Parameter Name="TASK_DUE_DATE" Type="String" />
            <asp:Parameter Name="TASK_STATUS" Type="String" />
            <asp:Parameter Name="original_TASK_ID" Type="String" />
            <asp:Parameter Name="original_TASK_NAME" Type="String" />
            <asp:Parameter Name="original_TASK_START_DATE" Type="String" />
            <asp:Parameter Name="original_TASK_DUE_DATE" Type="String" />
            <asp:Parameter Name="original_TASK_STATUS" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
        </div>
    </main>
</asp:Content>
