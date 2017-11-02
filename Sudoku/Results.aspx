<%@ Page Title="Results" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" %>
<script runat="server">
    protected bool noloadedpuzzle = false;
    int[,] puzzle = new int[9, 9];
    bool swap = false;
    int[,] solved_puzzle = new int[9, 9];
    CS4750HW6.GameBoard gb = null;

    string time;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["puzzle"] != null)
        {
            puzzle = (int[,]) Session["puzzle"];
            Session["puzzle"] = null;

        }
        else if(Session["stored_puzzle"] != null)
        {
            swap = true;
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
            System.Diagnostics.Stopwatch stopWatch = new  System.Diagnostics.Stopwatch();
            stopWatch.Start();
        
        

            gb = new CS4750HW6.GameBoard(puzzle);
            while (!gb.isGoalState())
            {
                gb.backtrackingSearch();
            } //End while (!this.Board1.isGoalState())

            stopWatch.Stop();
            // Get the elapsed time as a TimeSpan value.
            TimeSpan ts = stopWatch.Elapsed;

            // Format and display the TimeSpan value.
            time = String.Format("{0:00}:{1:00}:{2:00}.{3:00}",
                ts.Hours, ts.Minutes, ts.Seconds,
                ts.Milliseconds / 10);
            CS4750HW6.Node[,] puzz = gb.Board;
            for (int i =0; i < 9; i++)
            {
                for(int j = 0; j < 9; j++)
                {
                    solved_puzzle[i, j] = puzz[j, i].Value;
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
        
        <div class="col-md-9">
        <table class="custom-table" style="margin-right:0;border: solid 5px">
            <% string border1 = "";
                string border2 = "";
                for (int i = 0; i < 9; i++)
                { if (i == 3 || i == 6) { border1 = "border-top:solid 5px;"; } else { border1 = ""; }%>
            <tr>
                <% for (int j = 0; j < 9; j++)
                      { if (j == 2 || j == 5) { border2 = "border-right:solid 5px;"; } else { border2 = ""; }%>
                    <td class="text-center" style="font-size:16px;<%=border1 + border2 %>"><%=(swap ? solved_puzzle[i, j] : solved_puzzle[j,i]) %></td>
                <%} %>
            </tr>
            <% } %>
        </table>
        </div>
        <div class="col-md-3">
            <b>Time:</b><br /> <%=time %><br />
            <% for (int i = 0; i < gb.InitMoves.Count; i++)
                {
                    if (i > 2) { break; }
                    CS4750HW6.Move m = gb.Moves[i];
                    %>
                <b>Move <%=i+1 %></b><br />
                Variable Selected: (<%=m.Node.Position.X %>, <%=m.Node.Position.Y %>)<br />
                Domain Size: <%=gb.InitMoves[i] %><br />
                
                
            <% } %>
        </div>

    <% } %>
</div>
</asp:Content>