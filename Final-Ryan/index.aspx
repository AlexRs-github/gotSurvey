<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Final_Ryan.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 534px;
            height: 296px;
        }
    </style>
</head>
<body class="text-light bg-dark">
    <header class="text-center">
            <img src="https://upload.wikimedia.org/wikipedia/en/d/d8/Game_of_Thrones_title_card.jpg" class="auto-style1" />
    </header>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlForm" runat="server" Visible="True">
            <br />
            <br />
            <h2 class="text-center">Please fill out the survey below</h2>
            <br />
            <br />
            <table class="container h-100" border="1">
                <tr>
                    <td>First Name:</td><td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="valFirstName" runat="server" ControlToValidate="txtFirstName" EnableClientScript="true" ErrorMessage="First Name Required" ForeColor="Red"/></td>
                </tr>
                <tr>
                    <td>Where are you from?: </td><td><asp:TextBox ID="txtWhere" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtWhere" EnableClientScript="true" ErrorMessage="Location Required" ForeColor="Red"/></td>
                </tr>
                <tr>
                    <td>What was your favorite character between seasons 1 through 4?: </td>
                    <td>
                        <asp:RadioButton ID="Radio1" Text="Cersei Lannister" Checked="True" GroupName="radFavChar1" runat="server" /><br />
                        <asp:RadioButton ID="Radio4" Text="Ned Stark" Checked="False" GroupName="radFavChar1" runat="server" /><br />
                        <asp:RadioButton ID="Radio2" Text="The Other Ned Stark" Checked="False" GroupName="radFavChar1" runat="server" /><br />
                        <asp:RadioButton ID="Radio3" Text="Catelyn Stark" Checked="False" GroupName="radFavChar1" runat="server" /><br />
                        <asp:RadioButton ID="Radio5" Text="Tyrion Lanister" Checked="False" GroupName="radFavChar1" runat="server" /><br />
                        <asp:RadioButton ID="Radio6" Text="Margaery Tyrell" Checked="False" GroupName="radFavChar1" runat="server" /><br />
                        <asp:RadioButton ID="Radio7" Text="Olenna Tyrell" Checked="False" GroupName="radFavChar1" runat="server" /><br />
                        <asp:RadioButton ID="Radio8" Text="Jorah Mormont" Checked="False" GroupName="radFavChar1" runat="server" /><br />
                        <asp:RadioButton ID="Radio9" Text="Danaerys Targaryen" Checked="False" GroupName="radFavChar1" runat="server" /><br />
                    </td>
                </tr>
                <tr>
                    <td>What was your favorite character between seasons 4 through 8?: </td>
                    <td>
                    <asp:RadioButton ID="Radio10" runat="server" Checked="True" GroupName="radFavChar2" Text="Cersei Lannister" /><br />
                    <asp:RadioButton ID="Radio11" runat="server" Checked="False" GroupName="radFavChar2" Text="Ned Stark" /><br />
                    <asp:RadioButton ID="Radio12" runat="server" Checked="False" GroupName="radFavChar2" Text=" The Other Ned Stark" /><br />
                    <asp:RadioButton ID="Radio13" runat="server" Checked="False" GroupName="radFavChar2" Text="Catelyn Stark" /><br />
                    <asp:RadioButton ID="Radio14" runat="server" Checked="False" GroupName="radFavChar2" Text="Tyrion Lanister" /><br />
                    <asp:RadioButton ID="Radio15" runat="server" Checked="False" GroupName="radFavChar2" Text="Margaery Tyrell" /><br />
                    <asp:RadioButton ID="Radio16" runat="server" Checked="False" GroupName="radFavChar2" Text="Olenna Tyrell" /><br />
                    <asp:RadioButton ID="Radio17" runat="server" Checked="False" GroupName="radFavChar2" Text="Jorah Mormont" /><br />
                    <asp:RadioButton ID="Radio18" runat="server" Checked="False" GroupName="radFavChar2" Text="Danaerys Targaryen" /><br />
                    </td>
                </tr>
                <tr>
                    <td>What was your favorite fictional locale between seasons 1 through 4?: </td><td><asp:TextBox ID="txtLocale1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLocale1" EnableClientScript="true" ErrorMessage="Favorite Locale Required" ForeColor="Red"/></td>
                </tr>
                <tr>
                    <td>What was your favorite fictional locale between seasons 4 through 8?: </td><td><asp:TextBox ID="txtLocale2" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLocale2" EnableClientScript="true" ErrorMessage="Favorite Locale Required" ForeColor="Red"/></td>
                </tr>
                <tr>
                    <td>What rating would you give seasons 1 through 4?: </td>
                    <td>
                        <asp:DropDownList runat="server" ID="drpRate1">
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>
                            <asp:ListItem Text="9" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>What rating would you give seasons 4 through 8?: </td>
                    <td>
                        <asp:DropDownList runat="server" ID="drpRate2">
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>
                            <asp:ListItem Text="9" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="container h-100" />
            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"/>
        </asp:Panel>
        <asp:Panel ID="pnlConfirm" runat="server" Visible="false">
            <h2>Thank you for your submission!</h2>
            <table border="1">
                <tr>
                    <td>First Name:</td><td><asp:Label ID="lblFirstName" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Where are you from?:</td><td><asp:Label ID="lblWhere" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>What was your favorite character between seasons 1 through 4?:</td><td><asp:Label ID="lblFavChar1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>What was your favorite character between seasons 4 through 8?:</td><td><asp:Label ID="lblFavChar2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>What was your favorite fictional locale between seasons 1 through 4?:</td><td><asp:Label ID="lblLocale1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>What was your favorite fictional locale between seasons 4 through 8?:</td><td><asp:Label ID="lblLocale2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>What rating would you give seasons 1 through 4?:</td><td><asp:Label ID="lblRate1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>What rating would you give seasons 4 through 8?:</td><td><asp:Label ID="lblRate2" runat="server"></asp:Label></td>
                </tr>
            </table> 
        </asp:Panel>
    </form>
</body>
</html>
