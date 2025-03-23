<%@ Page Title="Project Milestone Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectMilestone.aspx.cs" Inherits="ProjectTrackingApp.ProjectMilestone" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        /* General Styling */
        body {
            background-color: white;
        }

        h2 {
            color: #444;
            font-weight: 500;
            margin-bottom: 10px;
            text-align: center;
            font-size: 20px;
        }

        p {
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
            text-align: center;
        }

        /* Centering Project ID Selection*/
        .selection-container {
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



    <!-- Centered Project ID Selection -->
    <div class="selection-container">
        <h2>Select Project</h2>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="PROJECT_NAME" DataValueField="PROJECT_ID"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT &quot;PROJECT_ID&quot;, &quot;PROJECT_NAME&quot; FROM &quot;PROJECT&quot;"></asp:SqlDataSource>
        <div style="height:30px;"></div>
        <h2>Milestone Details</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MILESTONE_ID" DataSourceID="milestones">
            <Columns>
                <asp:BoundField DataField="MILESTONE_ID" HeaderText="MILESTONE_ID" ReadOnly="True" SortExpression="MILESTONE_ID" />
                <asp:BoundField DataField="MILESTONE_NAME" HeaderText="MILESTONE_NAME" SortExpression="MILESTONE_NAME" />
                <asp:BoundField DataField="DUE_DATE" HeaderText="DUE_DATE" SortExpression="DUE_DATE" />
                <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT_ID" SortExpression="PROJECT_ID" />
            </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="milestones" runat="server" ConnectionString="<%$ ConnectionStrings:Bhumika24 %>" ProviderName="<%$ ConnectionStrings:Bhumika24.ProviderName %>" SelectCommand="SELECT MILESTONE_ID, MILESTONE_NAME, DUE_DATE, PROJECT_ID FROM MILESTONE WHERE (PROJECT_ID = :project_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="project_id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </div>

   

</asp:Content>
