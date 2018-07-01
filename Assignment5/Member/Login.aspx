<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment5.Member.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 107px;
        }
        .auto-style2 {
            width: 101px;
        }
    </style>
</head>
<body>

    <table border="1"  >
        <tr>
            <td>
                <form id="form1" runat="server">
                <h2> Log in to web portal</h2>

                <table style="width: 400px;">
                    <tr>
                        <td class="auto-style2">
                <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>
                        </td>
                        <td class="auto-style1">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style1">
                <input id="txtPassword" type="password" runat="server"/></td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style1">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        </td>
                        <td class="auto-style2">
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
                        </td>
                    </tr>
                </table>
        
                <br />
                </form>
            </td>
        </tr>
    </table>
</body>
</html>
