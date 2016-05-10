<%@ Page Title="" Language="C#" MasterPageFile="~/Samples/Tutorials/Pluralsight/PluralsightMaster.master" AutoEventWireup="true" CodeBehind="AngularJSGSPart1.aspx.cs" Inherits="AngularJSExercises.Samples.Tutorials.Pluralsight.AngularJSGetStarted.AngularJSGSPart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3 class="section-heading">AngularJS: Get Started</h3>
        <h3 class="section-subheading text-muted">by: Scott Allen</h3>
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
                <div class="col-sm-6">
                    <div ng-controller="ControllerMain">
                        <h1>{{message}}</h1>
                    </div>
                    <div ng-controller="ControllerHello">
                        <div class="col-sm-3">
                            <input class="form-control" ng-model="greeting.text" />
                        </div>
                        <div class="col-sm-3">Greeting: {{greeting.text}} </div>
                    </div>
                </div>
                <div class="col-sm-6" ng-controller="ControllerCart">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <span>Your Order</span><span><i>( Sample from a book)</i></span>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered table-striped table-condensed table-hover">
                                <thead>
                                    <tr>
                                        <th width="30%">Item Name</th>
                                        <th width="25%">Qty</th>
                                        <th width="20%">Unit Price</th>
                                        <th width="20%">SubTotal</th>
                                        <th width="5%">
                                            <button class="btn btn-info btn-group-xs"><i class="fa fa-plus"></i></button>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="item in items">
                                        <td>{{item.title}}</td>
                                        <td>
                                            <input class="form-control number" ng-model="item.quantity"></td>
                                        <td class="number">{{item.price | currency:"PhP " }}</td>
                                        <td class="number">{{item.price * item.quantity | currency:"PhP "}}</td>
                                        <td>
                                            <button class="btn btn-danger" ng-click="remove($index)"><i class="fa fa-times"></i></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="panel-footer">
                            <div class="col-sm-push-6">
                                <span>Total:</span>
                                <span><strong>P x,xxx.xx</strong></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-group-xs col-sm-3 col-sm-offset-9">
            <a class="btn btn-primary btn-sm" href="#"><i class="fa fa-arrow-left"></i></a>
            <a class="btn btn-primary btn-sm" href="#"><i class="fa fa-home"></i></a>
            <a class="btn btn-primary btn-sm" href="/Samples/Tutorials/Pluralsight/AngularJSGetStarted/AngularJSGSP2.aspx"><i class="fa fa-arrow-right"></i></a>
        </div>
    </div>
</asp:Content>
