<%@ Page Title="" Language="C#" MasterPageFile="~/Exercises/AngularJSNinja/AngularNinjaMaster.master" AutoEventWireup="true" CodeBehind="AngularJSNinjaP1.aspx.cs" Inherits="AngularJSExercises.Exercises.AngularJSNinja.AngularJSNinjaP1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div ng-app="myApp">
        <div class="container-fluid">
            <div class="col-sm-4" ng-controller="FinanceController">
                <div class="panel panel-default">
                    <div class="panel-heading">Exercise 1 - How much would spend for gadgets?</div>
                    <div class="panel-body">
                        <div class="form-group-sm">
                            <div class="col-sm-4 label-sm">Your Salary: </div>
                            <div class="input-group col-sm-8">
                                <span class="input-group-addon">PhP</span>
                                <input class="form-control number" type="number" ng-model="salary" />
                            </div>
                        </div>
                        <div class="form-group-sm">
                            <div class="col-sm-4 label-sm">Percentage: </div>
                            <div class="col-sm-8 input-group">
                                <input class="form-control number" type="number" ng-model="percentage" />
                                <span class="input-group-addon">%</span>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">Amount to spend: <strong>{{result() | currency:'PhP ' }}</strong></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
