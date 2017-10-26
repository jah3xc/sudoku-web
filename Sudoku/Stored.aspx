<%@ Page Title="Stored Puzzles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>
<script runat="server">
    protected String[] puzzles = { "a.png", "b.png", "c.png" };
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(Request.Params["puzzle"]))
        {
            Session["stored_puzzle"] = Request.Params["puzzle"];
            Response.Redirect("Results");
        }
    }
</script>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <h1 class="text-center">Stored Puzzles</h1>
        <%-- Stored Puzzles Div --%>
        <div class="col-md-offset-4 col-md-4">
            <% for (int i = 0; i < puzzles.Length; i++)
                { %>
            <div class="col-md-12" id="pic<%=i %>" onclick="$('#pz').attr('value', '<%=i %>');$('#MainContent_sub').click();" onmouseover="$(this).css('background', 'grey')" onmouseout="$(this).css('background', 'white')" style="padding:50px; cursor:pointer">
                <h2>Puzzle <%=i+1 %></h2>
                <img src="<%=puzzles[i] %>" />
                </div>
            <%} %>
        </div>
    </div>
    <form id="myForm" method="get">
        <input type="hidden" name="puzzle" id="pz" />
        <button style="display:none;" type="submit" id="sub" runat="server">Submit</button>
    </form>


</asp:Content>
