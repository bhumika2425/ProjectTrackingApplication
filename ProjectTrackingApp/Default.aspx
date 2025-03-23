<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectTrackingApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <style>
            /* General Styles */
            body {
                font-family: 'Arial', sans-serif;
                background-color: #f5f5f5; /* Light grey background */
                margin: 0;
                padding: 0;
                color: #333; /* Dark grey text */
            }

            main {
                max-width: 2000px;
                margin: 0 auto;
                padding: 20px;
                background-color: #ffffff; /* White content area */
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }

            /* Header Section */
            .hero-section {
                text-align: center;
                padding: 40px 20px;
                background-color: #333; /* Blackish-grey header */
                color: #fff; /* White text */
                border-radius: 8px 8px 0 0;
            }

            .hero-section h1 {
                font-size: 36px;
                margin: 0 0 10px;
            }

            .hero-section p {
                font-size: 18px;
                margin: 0 0 20px;
                color: #ddd; /* Light grey subtitle */
            }

            .cta-button {
                display: inline-block;
                padding: 12px 24px;
                background-color: #fff; /* White button */
                color: #333; /* Dark grey text */
                text-decoration: none;
                font-size: 16px;
                font-weight: bold;
                border-radius: 5px;
                transition: background-color 0.3s ease, color 0.3s ease;
            }

            .cta-button:hover {
                background-color: #ddd; /* Light grey on hover */
                color: #000; /* Black text on hover */
            }

            /* Features Section */
            .features-section {
                padding: 40px 20px;
                background-color: #fff; /* White background */
            }

            .features-section h2 {
                font-size: 28px;
                color: #333; /* Dark grey */
                text-align: center;
                margin-bottom: 30px;
            }

            .features-grid {
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                gap: 20px;
            }

            .feature-item {
                flex: 1;
                min-width: 250px;
                background-color: #f5f5f5; /* Light grey */
                padding: 20px;
                border-radius: 8px;
                text-align: center;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }

            .feature-item:hover {
                transform: translateY(-5px);
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            }

            .feature-item h3 {
                font-size: 20px;
                color: #333; /* Dark grey */
                margin: 0 0 10px;
            }

            .feature-item p {
                font-size: 14px;
                color: #666; /* Medium grey */
                margin: 0;
            }

            /* Info Section */
            .info-section {
                padding: 40px 20px;
                background-color: #333; /* Blackish-grey */
                color: #fff; /* White text */
                text-align: center;
                border-radius: 0 0 8px 8px;
            }

            .info-section h2 {
                font-size: 28px;
                margin: 0 0 20px;
            }

            .info-section p {
                font-size: 16px;
                color: #ddd; /* Light grey */
                max-width: 800px;
                margin: 0 auto 20px;
            }

            /* Footer Links (Optional) */
            .footer-links a {
                color: #007bff; /* Blue links */
                text-decoration: none;
                margin: 0 10px;
                font-size: 14px;
            }

            .footer-links a:hover {
                text-decoration: underline;
            }

            /* Responsive Design */
            @media (max-width: 768px) {
                .hero-section h1 {
                    font-size: 28px;
                }

                .hero-section p {
                    font-size: 16px;
                }

                .features-grid {
                    flex-direction: column;
                    align-items: center;
                }

                .feature-item {
                    width: 100%;
                    max-width: 400px;
                }

                .info-section h2 {
                    font-size: 24px;
                }

                .info-section p {
                    font-size: 14px;
                }
            }
        </style>

        <!-- Hero Section -->
        <section class="hero-section">
            <h1>Welcome to TaskMaster</h1>
            <p>Your Ultimate Task Management Solution for Seamless Project Tracking</p>
            <a href="ProjectDetails.aspx" class="cta-button">Get Started</a>
        </section>

        <!-- Features Section -->
        <section class="features-section">
            <h2>Why Choose TaskMaster?</h2>
            <div class="features-grid">
                <div class="feature-item">
                    <h3>Task Organization</h3>
                    <p>Easily create, assign, and track tasks with due dates and statuses to keep your projects on schedule.</p>
                </div>
                <div class="feature-item">
                    <h3>Project Overview</h3>
                    <p>Get a comprehensive view of all your projects with start dates, due dates, and progress tracking.</p>
                </div>
                <div class="feature-item">
                    <h3>User-Friendly Interface</h3>
                    <p>Designed with simplicity in mind, TaskMaster ensures you can focus on work, not on learning the tool.</p>
                </div>
            </div>
        </section>

        <!-- Info Section -->
        <section class="info-section">
            <h2>About TaskMaster</h2>
            <p>TaskMaster is built to streamline your workflow, whether you're managing a small team or a large enterprise project. With real-time updates, intuitive controls, and a clean design, we help you stay productive and organized.</p>
            <div class="footer-links">
                <a href="ProjectDetails.aspx">View Projects</a> |
                <a href="TaskDetails.aspx">Manage Tasks</a> |
                <a href="Contact.aspx">Contact Us</a>
            </div>
        </section>
    </main>
</asp:Content>