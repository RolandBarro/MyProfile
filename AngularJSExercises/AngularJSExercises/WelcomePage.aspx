<%@ Page Title="" Language="C#" MasterPageFile="~/PortfolioSiteMaster.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="AngularJSExercises.WelcomePage.WelcomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Welcome!</div>
                <div class="intro-heading">It's Nice To Meet You</div>
                <div class="intro-lead-in">Here is where my works on ASP.Net C# Programming resides...</div>
                <a href="ServicesPage.aspx" class="page-scroll btn btn-xl">Tell Me More</a>
            </div>
        </div>
    </header>
</asp:Content>
