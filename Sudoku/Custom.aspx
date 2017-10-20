<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Custom.aspx.cs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <h1 class="text-center">Custom Puzzles</h1>
        <%-- Custom Puzzles Div --%>
        <div class="col-md-12">
            <table class="table" ng-controller="CustomPuzzle as ctrl">
                <tr ng-repeat="val in Array(ctrl.SIZE)">
                    <td ng-repeat="val2 in Array(ctrl.SIZE)">
                        hi
                    </td>
                </tr>
            </table>
        </div>
    </div>


</asp:Content>
