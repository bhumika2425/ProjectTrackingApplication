<%@ Page Title="UserDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="ProjectTrackingApp.UserDetails" %>

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
                                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="USER_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="formview-container">
                <EditItemTemplate>
                    USER_ID:
                    <asp:Label ID="USER_IDLabel1" runat="server" Text='<%# Eval("USER_ID") %>' />
                    <br />
                    USER_NAME:
                    <asp:TextBox ID="USER_NAMETextBox" runat="server" Text='<%# Bind("USER_NAME") %>' CssClass="form-input" />
                    <br />
                    USER_EMAIL:
                    <asp:TextBox ID="USER_EMAILTextBox" runat="server" Text='<%# Bind("USER_EMAIL") %>' CssClass="form-input" />
                    <br />
                    USER_CONTACT:
                    <asp:TextBox ID="USER_CONTACTTextBox" runat="server" Text='<%# Bind("USER_CONTACT") %>' CssClass="form-input" />
                    <br />
                    GRADE_ID:
                    <asp:TextBox ID="GRADE_IDTextBox" runat="server" Text='<%# Bind("GRADE_ID") %>' CssClass="form-input" />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="linkbutton" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    USER_ID:
                    <asp:TextBox ID="USER_IDTextBox" runat="server" Text='<%# Bind("USER_ID") %>' CssClass="form-input" />
                    <br />
                    USER_NAME:
                    <asp:TextBox ID="USER_NAMETextBox" runat="server" Text='<%# Bind("USER_NAME") %>' CssClass="form-input"/>
                    <br />
                    USER_EMAIL:
                    <asp:TextBox ID="USER_EMAILTextBox" runat="server" Text='<%# Bind("USER_EMAIL") %>' CssClass="form-input"/>
                    <br />
                    USER_CONTACT:
                    <asp:TextBox ID="USER_CONTACTTextBox" runat="server" Text='<%# Bind("USER_CONTACT") %>' CssClass="form-input" />
                    <br />
                    GRADE_ID:
                    <asp:TextBox ID="GRADE_IDTextBox" runat="server" Text='<%# Bind("GRADE_ID") %>' CssClass="form-input" />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="linkbutton" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="linkbutton" />
                </InsertItemTemplate>
                <ItemTemplate>
                    USER_ID:
                    <asp:Label ID="USER_IDLabel" runat="server" Text='<%# Eval("USER_ID") %>' />
                    <br />
                    USER_NAME:
                    <asp:Label ID="USER_NAMELabel" runat="server" Text='<%# Bind("USER_NAME") %>' />
                    <br />
                    USER_EMAIL:
                    <asp:Label ID="USER_EMAILLabel" runat="server" Text='<%# Bind("USER_EMAIL") %>' />
                    <br />
                    USER_CONTACT:
                    <asp:Label ID="USER_CONTACTLabel" runat="server" Text='<%# Bind("USER_CONTACT") %>' />
                    <br />
                    GRADE_ID:
                    <asp:Label ID="GRADE_IDLabel" runat="server" Text='<%# Bind("GRADE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="edit-btn" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="delete-btn" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="linkbutton" />
                </ItemTemplate>
            </asp:FormView>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USER_ID" DataSourceID="SqlDataSource1" CssClass="table-responsive">
    <Columns>
        
        
        <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" ReadOnly="True" SortExpression="USER_ID" />
        <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" SortExpression="USER_NAME" />
        <asp:BoundField DataField="USER_EMAIL" HeaderText="USER_EMAIL" SortExpression="USER_EMAIL" />
        <asp:BoundField DataField="USER_CONTACT" HeaderText="USER_CONTACT" SortExpression="USER_CONTACT" />
        <asp:BoundField DataField="GRADE_ID" HeaderText="GRADE_ID" SortExpression="GRADE_ID" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="DELETE FROM &quot;PERSONS&quot; WHERE &quot;USER_ID&quot; = :original_USER_ID AND ((&quot;USER_NAME&quot; = :original_USER_NAME) OR (&quot;USER_NAME&quot; IS NULL AND :original_USER_NAME IS NULL)) AND ((&quot;USER_EMAIL&quot; = :original_USER_EMAIL) OR (&quot;USER_EMAIL&quot; IS NULL AND :original_USER_EMAIL IS NULL)) AND ((&quot;USER_CONTACT&quot; = :original_USER_CONTACT) OR (&quot;USER_CONTACT&quot; IS NULL AND :original_USER_CONTACT IS NULL)) AND ((&quot;GRADE_ID&quot; = :original_GRADE_ID) OR (&quot;GRADE_ID&quot; IS NULL AND :original_GRADE_ID IS NULL))" InsertCommand="INSERT INTO &quot;PERSONS&quot; (&quot;USER_ID&quot;, &quot;USER_NAME&quot;, &quot;USER_EMAIL&quot;, &quot;USER_CONTACT&quot;, &quot;GRADE_ID&quot;) VALUES (:USER_ID, :USER_NAME, :USER_EMAIL, :USER_CONTACT, :GRADE_ID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM &quot;PERSONS&quot;" UpdateCommand="UPDATE &quot;PERSONS&quot; SET &quot;USER_NAME&quot; = :USER_NAME, &quot;USER_EMAIL&quot; = :USER_EMAIL, &quot;USER_CONTACT&quot; = :USER_CONTACT, &quot;GRADE_ID&quot; = :GRADE_ID WHERE &quot;USER_ID&quot; = :original_USER_ID AND ((&quot;USER_NAME&quot; = :original_USER_NAME) OR (&quot;USER_NAME&quot; IS NULL AND :original_USER_NAME IS NULL)) AND ((&quot;USER_EMAIL&quot; = :original_USER_EMAIL) OR (&quot;USER_EMAIL&quot; IS NULL AND :original_USER_EMAIL IS NULL)) AND ((&quot;USER_CONTACT&quot; = :original_USER_CONTACT) OR (&quot;USER_CONTACT&quot; IS NULL AND :original_USER_CONTACT IS NULL)) AND ((&quot;GRADE_ID&quot; = :original_GRADE_ID) OR (&quot;GRADE_ID&quot; IS NULL AND :original_GRADE_ID IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_USER_ID" Type="String" />
        <asp:Parameter Name="original_USER_NAME" Type="String" />
        <asp:Parameter Name="original_USER_EMAIL" Type="String" />
        <asp:Parameter Name="original_USER_CONTACT" Type="String" />
        <asp:Parameter Name="original_GRADE_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="USER_ID" Type="String" />
        <asp:Parameter Name="USER_NAME" Type="String" />
        <asp:Parameter Name="USER_EMAIL" Type="String" />
        <asp:Parameter Name="USER_CONTACT" Type="String" />
        <asp:Parameter Name="GRADE_ID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="USER_NAME" Type="String" />
        <asp:Parameter Name="USER_EMAIL" Type="String" />
        <asp:Parameter Name="USER_CONTACT" Type="String" />
        <asp:Parameter Name="GRADE_ID" Type="String" />
        <asp:Parameter Name="original_USER_ID" Type="String" />
        <asp:Parameter Name="original_USER_NAME" Type="String" />
        <asp:Parameter Name="original_USER_EMAIL" Type="String" />
        <asp:Parameter Name="original_USER_CONTACT" Type="String" />
        <asp:Parameter Name="original_GRADE_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
 </div>
    </main>
</asp:Content>
