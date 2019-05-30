<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSubmissions.aspx.cs" Inherits="Final_Ryan.ViewSubmissions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <tr>
                    <td>First Name</td><td>FavChar1</td><td>FavChar2</td><td>Locale2</td><td>Locale1</td>
                </tr>
                <asp:Literal ID="litSubmissions" runat="server"></asp:Literal>
            </table>
        </div>
    </form>
</body>
</html>
