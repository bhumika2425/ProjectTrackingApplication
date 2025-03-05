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

        /* Centering Project ID Selection */
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
        <asp:Label ID="Label2" runat="server" Text="Project ID:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="styled-dropdown">
            <asp:ListItem Text="-- Select Project --" Value="0"></asp:ListItem>
            <asp:ListItem Text="PJ001" Value="PJ001"></asp:ListItem>
            <asp:ListItem Text="PJ002" Value="PJ002"></asp:ListItem>
            <asp:ListItem Text="PJ003" Value="PJ003"></asp:ListItem>
        </asp:DropDownList>
    </div>

    <p><strong>Milestone Details</strong></p>
    <p>Below are the key milestones for the selected project, tracking progress from requirements gathering to implementation.</p>

    <table>
        <thead>
            <tr>
                <th>Milestone ID</th>
                <th>Milestone Name</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>MS001</td>
                <td>Requirement Gathering</td>
                <td>2024-01-10</td>
                <td>2024-01-25</td>
                <td><span class="status-completed">Completed</span></td>
            </tr>
            <tr>
                <td>MS002</td>
                <td>Design Phase</td>
                <td>2024-02-01</td>
                <td>2024-02-28</td>
                <td><span class="status-in-progress">In Progress</span></td>
            </tr>
            <tr>
                <td>MS003</td>
                <td>Implementation</td>
                <td>2024-03-05</td>
                <td>2024-06-15</td>
                <td><span class="status-pending">Pending</span></td>
            </tr>
        </tbody>
    </table>

</asp:Content>
