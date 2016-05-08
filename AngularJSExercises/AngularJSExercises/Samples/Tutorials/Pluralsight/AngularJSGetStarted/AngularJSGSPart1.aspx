<%@ Page Title="" Language="C#" MasterPageFile="~/Samples/Tutorials/Pluralsight/PluralsightMaster.master" AutoEventWireup="true" CodeBehind="AngularJSGSPart1.aspx.cs" Inherits="AngularJSExercises.Samples.Tutorials.Pluralsight.AngularJSGetStarted.AngularJSGSPart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="page-header section-heading">AngularJS: Get Started</h1>
    <h3 class="section-subheading text-muted">by: Scott Allen</h3>
    <div>
        <div class="exeroutput">
            <div class="panel panel-info">
                <div class="panel-heading">Vocabularies</div>
                <div class="panel-body vocabularies">
                    <div class="col-sm-6">
                        <div><small><strong>IIFE</strong><span> - Immediately Invoked Function Expression.</span>  </small></div>
                        <div><small><strong>Model</strong><span> - contains a data to work with.</span></small></div>
                        <div><small><strong>Data Binding</strong><span> - takes data from the model and show it on the view.</span></small></div>
                        <div><small><strong>View</strong><span> - is the HTML of the web page.</span></small></div>
                    </div>
                    <div class="col-sm-6">
                        <div><small><strong>Controllers</strong><span> - by implication it is incharged of the particular area of an application. In AngularJS, controller is incharged or responsible in building a model. It is responsible in grabbing data from a model. It might also do the calculations, call back to a web server that talks to a database.</span></small></div>
                    </div>
                </div>
            </div>
            <div ng-app="app">
                <h4>Output</h4>
                {{ 30/6 }}
                <div ng-controller="ControllerMain">
                    <h1>{{message}}</h1>
                    <div>
                        <div>First Name: {{person.firstname}}</div>
                    </div>
                </div>
                <div ng-controller="ControllerHello">
                    <div class="col-sm-3">
                        <input class="form-control" ng-model="greeting.model"/>
                    </div>
                    <div class="col-sm-3">Greeting: {{greeting.text}} </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
