<%@ Page Title="Results" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" %>
<script runat="server">
    protected bool noloadedpuzzle = false;
    int[,] puzzle = new int[9, 9];

    int[,] solved_puzzle = new int[9, 9];
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["puzzle"] != null)
        {
            puzzle = (int[,]) Session["puzzle"];
            Session["puzzle"] = null;

        }
        else if(Session["stored_puzzle"] != null)
        {
            CS4750HW6.Form1 stored = new CS4750HW6.Form1();
            int i = Convert.ToInt32(Session["stored_puzzle"]);
            i++;
            switch(i)
            {
                case 1:
                    puzzle = stored.puzzle1;
                    break;
                case 2:
                    puzzle = stored.puzzle2;
                    break;
                case 3:
                    puzzle = stored.puzzle3;
                    break;
            }
            Session["stored_puzzle"] = null;
        }
        else
        {
            noloadedpuzzle = true;
        }

        if(!noloadedpuzzle)
        {
            CS4750HW6.GameBoard gb = new CS4750HW6.GameBoard(puzzle);
            while (!gb.isGoalState())
            {
                gb.backtrackingSearch();
            } //End while (!this.Board1.isGoalState())
            CS4750HW6.Node[,] puzz = gb.Board;
            for (int i =0; i < 9; i++)
            {
                for(int j = 0; j < 9; j++)
                {
                    solved_puzzle[i, j] = puzz[i, j].Value;
                }
            }
        }
    }
</script>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    <h1 class="text-center">Results</h1>
    <% if (noloadedpuzzle) { %>
        <div class="alert alert-danger">
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
        The solution is:
        <table class="custom-table">
            <% for (int i = 0; i < 9; i++)
                      { %>
            <tr>
                <% for (int j = 0; j < 9; j++)
                      { %>
                    <td class="text-center" style="font-size:16px;"><%=(solved_puzzle[i, j]) %></td>
                <%} %>
            </tr>
            <% } %>
        </table>

    <% } %>
</div>
</asp:Content>