<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assignment5.Member.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:600px;">
                <tr>
                    <td colspan="3">
                        <h2>Sign up</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <input id="txtPassword" type="password" runat="server"/></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblConfPassword" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <input id="txtPassword2" type="password" runat="server"/></td>
                    <td>
                        <asp:Label ID="lblAlert" runat="server" ForeColor="Red" Text="Passwords don't match" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCaptcha" runat="server" Text="Enter Captcha"></asp:Label>
                        <br />
                        <asp:Label ID="lblAlertCaptcha" runat="server" ForeColor="Red" Text="Captcha don't match" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <img id="imgVerify" src="img.jpeg" runat="server"/>
                        <asp:Button ID="btnGetAnotherImg" runat="server" Text="Not visible?" OnClick="btnGetAnotherImg_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSignUp" runat="server" Text="Register" OnClick="btnSignUp_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblSuccess" runat="server" ForeColor="Green" Text="Registered Successfully" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
