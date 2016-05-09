<%@ Page Title="" Language="C#" MasterPageFile="~/Samples/Tutorials/Pluralsight/PluralsightMaster.master" AutoEventWireup="true" CodeBehind="AngularJSGSP2.aspx.cs" Inherits="AngularJSExercises.Samples.Tutorials.Pluralsight.AngularJSGetStarted.AngularJSGSP2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="section-heading">AngularJS: Get Started </h3>
    <span><i>(Page 2)</i></span>
    <h3 class="section-subheading text-muted">by: Scott Allen</h3>
    <div class="container-fluid" ng-app="app">
        <div ng-controller="ControllerGitHubUserFetch">
            <div>
                <div>
                    <h3>GitHub User Fetch</h3>
                </div>
            </div>
            <div class="col-sm-3">
                <asp:Image ID="imgAvatar" runat="server" ng-src="{{user.avatar_url}}" title="img: {{user.name}}" Height="100px" Width="100px" /><br />
                <strong>{{user.name}}</strong><br />
                {{user.location}}
                {{error}}
            </div>
            <div class="col-sm-9">
                <p>Other OutPut...</p>
            </div>
        </div>

    </div>
</asp:Content>
