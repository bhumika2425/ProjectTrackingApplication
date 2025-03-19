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
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="USER_NAME" DataValueField="USER_ID"></asp:DropDownList>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT &quot;USER_ID&quot;, &quot;USER_NAME&quot; FROM &quot;PERSONS&quot;"></asp:SqlDataSource>


        <asp:SqlDataSource ID="username" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT &quot;USER_NAME&quot;, &quot;USER_ID&quot; FROM &quot;PERSONS&quot;"></asp:SqlDataSource>


    </div>

    <p><strong>Project Details</strong></p>
    <p>&nbsp;</p>


   



</asp:Content>
