<%@ Page Title="Project Milestone Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectMilestone.aspx.cs" Inherits="ProjectTrackingApp.MilestoneDetails" %>

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

    <h2 id="title"><%: Title %></h2>

    <!-- Centered Project ID Selection -->
    <div class="selection-container">
        <asp:Label ID="Label2" runat="server" Text="Project Name:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PROJECT_NAME" DataValueField="PROJECT_ID"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT &quot;PROJECT_ID&quot;, &quot;PROJECT_NAME&quot; FROM &quot;PROJECT&quot;"></asp:SqlDataSource>
    </div>

   

</asp:Content>
