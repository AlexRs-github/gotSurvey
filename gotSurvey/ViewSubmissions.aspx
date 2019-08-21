<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSubmissions.aspx.cs" Inherits="gotSurvey.ViewSubmissions" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <title></title>
</head>
<body class="text-light bg-dark">
    <header class="text-center">
    <header class="text-center">
            <img src="https://upload.wikimedia.org/wikipedia/en/d/d8/Game_of_Thrones_title_card.jpg" class="auto-style1" />
    </header>
    <br />
    <br />
    <form id="form1" runat="server">
        <div>
            <table class="container h-100" border="1">
                <tr>
                    <td>First Name</td><td>Where</td><td>FavChar1</td><td>FavChar2</td><td>Locale1</td><td>Locale2</td><td>Rating1</td><td>Rating2</td>
                </tr>
                <asp:Literal ID="litSubmissions" runat="server"></asp:Literal>
            </table>
        </div>
        <div id="chart">
            <asp:SqlDataSource ID="mydb" runat="server" ConnectionString="<%$ ConnectionStrings:myconn %>" SelectCommand="SELECT [FavChar1], [FavChar2], [Locale1], [Locale2], [Rating1], [Rating2] FROM [Submissions]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
