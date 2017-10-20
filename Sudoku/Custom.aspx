<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Custom.aspx.cs" Inherits="Sudoku.Custom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <% for (int i =0; i < SIZE; i++) {
                for(int j =0; j < SIZE; j++)
                {
                    
                    %>
                    
        <%
                }
           %>
        <%} %>
    </form>
</body>
</html>
