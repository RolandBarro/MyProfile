<%@ Page Title="" Language="C#" MasterPageFile="~/Exercises/ProjectManager/ProjectManagerMaster.master" AutoEventWireup="true" CodeBehind="ProjectManagerTaskList.aspx.cs" Inherits="AngularJSExercises.Exercises.ProjectManager.ProjectManagerTaskList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-body">
                <table class="table table-hover table-condensed table-striped">
                    <tr>
                        <th>Project Name</th>
                        <th>Date Initiated</th>
                        <th>Project Lead</th>
                        <th><a class="btn btn-info btn-xs"><i class="fa fa-plus"></i></a></th>
                    </tr>
                    <tbody>
                        <tr>
                            <td>Pedia Client App</td>
                            <td>12/27/2015</td>
                            <td>Ralph</td>
                            <td><a class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i></a><a class="btn btn-danger btn-xs"><i class="fa fa-times"></i></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div>
            <div>
                <h4>Project Details</h4>
                Project Name:<br />
                Client Name:<br />
                Project Lead:<br />
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    <table class="table table-hover table-condensed table-striped">
                        <tr>
                            <th>Tasks</th>
                            <th>Date Assigned</th>
                            <th>Date Completed</th>
                            <th>Team Member</th>
                            <th><a class="btn btn-info btn-xs"><i class="fa fa-plus"></i></a></th>
                        </tr>

                        <tbody>
                            <tr>
                                <td>Master Layout</td>
                                <td>12/27/2015</td>
                                <td></td>
                                <td>Ralph</td>
                                <td><a class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i></a><a class="btn btn-danger btn-xs"><i class="fa fa-times"></i></a></td>
                            </tr>
                            <tr>
                                <td>CSS</td>
                                <td>12/27/2015</td>
                                <td></td>
                                <td>Somebody</td>
                                <td><a class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i></a><a class="btn btn-danger btn-xs"><i class="fa fa-times"></i></a></td>
                            </tr>
                            <tr>
                                <td>Entity</td>
                                <td>12/27/2015</td>
                                <td></td>
                                <td>Somebody1</td>
                                <td><a class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i></a><a class="btn btn-danger btn-xs"><i class="fa fa-times"></i></a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
