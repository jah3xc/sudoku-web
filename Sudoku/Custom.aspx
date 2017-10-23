<%@ Page Title="Custom Puzzles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Custom.aspx.cs" Inherits="Custom" %>

<script runat="server">
    protected String message;
    private bool isempty = true;
    private int[,] puzzle = new int[9,9];

    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 9; i++)
        {
            String num = i.ToString();
            if (!String.IsNullOrEmpty(Request.Params[num]))
            {
                isempty = false;
                String columnStr = Request.Params[num].ToString();
                String[] columnArr = columnStr.Split(new char[',']);
                for(var j = 0; j < 9; j++)
                {
                    if (columnArr[j].Length > 0)
                    {
                        int value = Convert.ToInt32(columnArr[j]);
                        puzzle[j, i] = value;
                    }
                    else
                    {
                        puzzle[j, i] = -1;
                    }
                }


            }
            else
            {
                for(var j =0; j < 9; j++)
                {
                    puzzle[j, i] = -1;
                }
            }
        }

        if(!isempty)
        {
            Session["puzzle"] = puzzle;
            Response.Redirect("/");
        }
    }

</script>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container" ng-controller="CustomPuzzle as ctrl">
        <% if (!String.IsNullOrEmpty(message))
            { %>
            <%=message %>
        <% } %>
        <h1 class="text-center">Custom Puzzles</h1>
        <%-- Custom Puzzles Div --%>
        <div class="col-md-offset-4 col-md-4">
            <form>  
                <table class="custom-table">
                    <tr ng-repeat="row in ctrl.puzzle track by $index">
                        <td ng-repeat="value in row track by $index"><input value="{{value != -1 ? value : ''}}" name="{{$index}}" class="form-control" style="width:35px; margin:auto;" maxlength="1" /></td>
                    </tr>    
                </table>
                <div class="text-center col-md-12" style="margin-top:10px;">
                    <button type="submit" runat="server" onclick="SubmitClick" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>


</asp:Content>
