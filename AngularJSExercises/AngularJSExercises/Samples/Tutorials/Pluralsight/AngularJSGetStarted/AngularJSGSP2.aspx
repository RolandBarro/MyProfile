<%@ Page Title="" Language="C#" MasterPageFile="~/Samples/Tutorials/Pluralsight/PluralsightMaster.master" AutoEventWireup="true" CodeBehind="AngularJSGSP2.aspx.cs" Inherits="AngularJSExercises.Samples.Tutorials.Pluralsight.AngularJSGetStarted.AngularJSGSP2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="section-heading">AngularJS: Get Started </h3>
    <span><i>(Page 2)</i></span>
    <h3 class="section-subheading text-muted">by: Scott Allen</h3>
    <div class="container-fluid" ng-app="app">
        <div ng-controller="ControllerGitHubUserFetch">
            <div>
                <h3 class="col-sm-5">GitHub User Fetch</h3>
                <div class="col-sm-4">
                    <span>{{autosearch}}</span>
                </div>
                <div class="col-sm-3">
                    <form name="searchUser">
                        <div class="input-group">
                            <input class="form-control input-group" placeholder="Search User" required ng-model="username" />
                            <!--<input type="submit" value="Search" />-->
                            <a class="input-group-addon btn btn-sm btn-success" type="submit" ng-click="searchUser(username)"><i class="fa fa-search"></i></a>
                        </div>
                        {{error}}
                    </form>
                </div>
            </div>
            <!--Results View-->
            <div class="col-sm-12" ng-show="user">
                <div class="col-sm-3 container-fluid">
                    <asp:Image ID="imgAvatar" runat="server" ng-src="{{user.avatar_url}}" title="img: {{user.name}}" Height="100px" Width="100px" /><br />
                    <strong>{{user.name}}</strong><br />
                    {{user.location}}
                    <br />
                    <a class="btn btn-link" target="_blank" href="{{user.html_url}}">{{user.html_url}}</a>
                    <br />
                    <br />
                    Order By:
                    <br />
                    <select class="form-control" ng-model="sortRepo">
                        <option value="+name">Name</option>
                        <option value="-stargazers_count">Stars</option>
                        <option value="+language">Language</option>
                    </select>
                    <br />
                    <div class="panel panel-primary">
                        <div class="panel-heading">More to Do!</div>
                        <div class="panel-body">
                            This simple GitHub user fetch can be developed in to a utility that can handle...
                            <ul>
                                <li>User Search</li>
                                <li>GitHub Repo Download</li>
                                <li>Others...</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-9" ng-hide="!user">
                    <div class="panel panel-info">
                        <div class="panel-heading">Repositories</div>
                        <div class="panel-body">
                            <table class="table table-condensed table-striped table-hover">
                                <tr>
                                    <th>Name</th>
                                    <th>Stars</th>
                                    <th>Language</th>
                                </tr>
                                <tbody>
                                    <tr ng-repeat="repo in repos | filter:searchTerm | orderBy:'name' | orderBy:sortRepo">
                                        <td><a class="btn btn-link" target="_blank" href="https://github.com/{{username}}/{{repo.name}}">{{repo.name}} - (default branch : {{repo.default_branch}}) </a></td>
                                        <td class="number">{{repo.stargazers_count | number}}</td>
                                        <td>{{repo.language}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="panel-footer">Total Repositories: {{repos.length}}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
