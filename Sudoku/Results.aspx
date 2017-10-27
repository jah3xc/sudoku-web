<%@ Page Title="Results" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" %>
<script runat="server">
    protected bool noloadedpuzzle = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["puzzle"] != null)
        {

        }
        else if(Session["stored_puzzle"] != null)
        {

        }
        else
        {
            noloadedpuzzle = true;
        }
    }
</script>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    <h1 class="text-center">Results</h1>
    <% if (noloadedpuzzle) { %>
        <div class="alert alert-warning">
            <h1>No puzzle has been loaded!</h1>
            <div>
                 Please visit one of the following pages to load a puzzle: 
                <ul>
                    <li><a href="Stored.aspx">Stored</a></li>
                    <li><a href="Custom.aspx">Custom</a></li>
                </ul>
            </div>
        </div>
    <% } else { %>


    <% } %>
</div>
</asp:Content>