<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sudoku._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Sudoku</h1>
        <p class="lead">Please choose to either run stored puzzles or create a custom puzzle</p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Custom Puzzles</h2>
            <p>
                Run custom puzzles that you define!
            </p>
            <p>
                <a class="btn btn-default" href="Custom.aspx">Run a custom puzzle &gt;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Stored Puzzles</h2>
            <p>
                Run stored puzzles that we have already created
            </p>
            <p>
                <a class="btn btn-default" href="Stored.aspx">Run a stored puzzle &gt;</a>
            </p>
        </div>
    </div>

</asp:Content>
