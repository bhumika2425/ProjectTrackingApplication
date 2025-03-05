<%@ Page Title="Top Performers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TopPerformer.aspx.cs" Inherits="ProjectTrackingApp.TopPerformer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
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
    </style>

    <h2 id="title"><%: Title %></h2>

    <!-- Centered Selection for Time Period -->
    <div class="selection-container">
        <asp:Label ID="Label1" runat="server" Text="Select Period:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="styled-dropdown">
            <asp:ListItem Text="-- Select Period --" Value="0"></asp:ListItem>
            <asp:ListItem Text="Last Month" Value="1"></asp:ListItem>
            <asp:ListItem Text="Last Quarter" Value="2"></asp:ListItem>
            <asp:ListItem Text="Yearly" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>

    <p><strong>Top Performers</strong></p>
    <p>Below are the highest-performing team members based on completed tasks and performance score.</p>

    <table>
        <thead>
            <tr>
                <th>Rank</th>
                <th>User ID</th>
                <th>Name</th>
                <th>Completed Tasks</th>
                <th>Performance Score</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>User001</td>
                <td>John Doe</td>
                <td>45</td>
                <td>98%</td>
            </tr>
            <tr>
                <td>2</td>
                <td>User002</td>
                <td>Jane Smith</td>
                <td>40</td>
                <td>95%</td>
            </tr>
            <tr>
                <td>3</td>
                <td>User003</td>
                <td>Mike Johnson</td>
                <td>38</td>
                <td>93%</td>
            </tr>
        </tbody>
    </table>
</asp:Content>
