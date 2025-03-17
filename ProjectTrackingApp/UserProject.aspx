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

    <h2 id="title"><%: Title %></h2>

    <!-- Centered User ID Selection -->
    <div class="user-selection">
        
        <asp:Label ID="Label2" runat="server" Text="User ID:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="username" DataTextField="USER_NAME" DataValueField="USER_ID"></asp:DropDownList>


        <asp:SqlDataSource ID="username" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT &quot;USER_NAME&quot;, &quot;USER_ID&quot; FROM &quot;PERSONS&quot;"></asp:SqlDataSource>


    </div>

    <p><strong>Project Details</strong></p>
<p>Below are the projects assigned to the selected user, along with their status and descriptions. These projects range from finance tracking tools to AI-powered applications, each contributing to different business solutions.</p>

    <table>
        <thead>
            <tr>
                <th>Project ID</th>
                <th>Project Name</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Status</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>PJ001</td>
                <td>Expense Tracker App</td>
                <td>2024-01-10</td>
                <td>2024-06-15</td>
                <td><span class="status-in-progress">In Progress</span></td>
                <td><span class="project-description">A finance management tool for tracking expenses and income.</span></td>
            </tr>
            <tr>
                <td>PJ002</td>
                <td>Hotel Management System</td>
                <td>2023-09-01</td>
                <td>2024-03-30</td>
                <td><span class="status-completed">Completed</span></td>
                <td><span class="project-description">A hotel reservation and billing system for automated management.</span></td>
            </tr>
            <tr>
                <td>PJ003</td>
                <td>AI Chatbot Development</td>
                <td>2024-02-20</td>
                <td>2024-08-10</td>
                <td><span class="status-pending">Pending</span></td>
                <td><span class="project-description">An AI-powered chatbot for customer support automation.</span></td>
            </tr>
        </tbody>
    </table>



</asp:Content>
