<%@ Page Title="User Project Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProject.aspx.cs" Inherits="ProjectTrackingApp.UserProject" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        /* General Styling */
        body {
            background-color: white;
        }

       h2 {
    color: #444;
    font-weight: 500; /* Reduced boldness */
    margin-bottom: 10px;
    text-align: center;
    font-size: 20px; /* Slightly smaller */
}


        p {
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
            text-align: center;
        }

        /* Centering User ID Selection */
        .user-selection {
            text-align: center;
            margin: 20px 0;
        }

        .styled-dropdown {
            width: 220px;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #666;
            font-size: 14px;
            background-color: white;
            color: #333;
        }

        .styled-dropdown:hover {
            border-color: #444;
        }

        /* Table Styling */
        table {
            width: 90%;
            border-collapse: collapse;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            margin: 20px auto;
            font-size: 14px;
        }

        thead {
            background-color: #666;
            color: white;
            text-align: left;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        tbody tr:nth-child(even) {
            background-color: #f0f0f0;
        }

        tbody tr:hover {
            background-color: #d6d6d6;
            transition: 0.3s;
        }

        th {
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Project Description */
        .project-description {
            font-size: 12px;
            color: #555;
            margin-top: 5px;
        }

        /* Status Colors */
        .status-in-progress {
            color: #e6ac00; /* Yellow */
            font-weight: bold;
        }

        .status-completed {
            color: #008000; /* Green */
            font-weight: bold;
        }

        .status-pending {
            color: #cc0000; /* Red */
            font-weight: bold;
        }
    </style>

  

    <!-- Centered User ID Selection -->
    <div class="user-selection">
      <h2>User name:  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="username" DataTextField="USER_NAME" DataValueField="USER_ID"></asp:DropDownList>
        </h2>
        <asp:SqlDataSource ID="username" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT &quot;USER_ID&quot;, &quot;USER_NAME&quot; FROM &quot;PERSONS&quot;"></asp:SqlDataSource>
        <div style="height:20px;"></div>
        <!-- User Details Display -->
        <div class="user-details">
            <asp:Label ID="lblUserDetails" runat="server" Text="" Visible="false"></asp:Label>
        </div>
        <div style="height:20px;"></div>
        
        <h2>Project Details</h2>
        <div style="height:20px;"></div>
        <p>Below are the projects assigned to the selected user, along with their status and descriptions.</p>
        <div style="height:20px;"></div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECT_ID" DataSourceID="projectD">
            <Columns>
                <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT_ID" ReadOnly="True" SortExpression="PROJECT_ID" />
                <asp:BoundField DataField="PROJECT_NAME" HeaderText="PROJECT_NAME" SortExpression="PROJECT_NAME" />
                <asp:BoundField DataField="PROJECT_START_DATE" HeaderText="PROJECT_START_DATE" SortExpression="PROJECT_START_DATE" />
                <asp:BoundField DataField="PROJECT_DUE_DATE" HeaderText="PROJECT_DUE_DATE" SortExpression="PROJECT_DUE_DATE" />
                <asp:BoundField DataField="PROJECT_STATUS" HeaderText="PROJECT_STATUS" SortExpression="PROJECT_STATUS" />
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="projectD" runat="server" ConnectionString="<%$ ConnectionStrings:Bhumika24 %>" ProviderName="<%$ ConnectionStrings:Bhumika24.ProviderName %>" SelectCommand="SELECT p.PROJECT_ID, p.PROJECT_NAME, p.PROJECT_START_DATE, p.PROJECT_DUE_DATE, p.PROJECT_STATUS FROM PROJECT p, USER_PROJECT_TASK pt WHERE p.PROJECT_ID = pt.PROJECT_ID AND (pt.USER_ID = :user_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="user_id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>


    </div>

    


   



</asp:Content>
