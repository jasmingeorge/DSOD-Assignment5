<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assignment5.Member.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <input id="txtPassword" type="password" runat="server"/>
        <br />
        <br />
            <asp:Label ID="lblConfPassword" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="txtPassword2" type="password" runat="server"/>
        <br />
        
        <br />
            <asp:Label ID="lblAlert" runat="server" ForeColor="Red" Text="Passwords don't match" Visible="False"></asp:Label>
            <asp:Label ID="lblSuccess" runat="server" ForeColor="Green" Text="Registered Successfully" Visible="False"></asp:Label>
        <br />
        <div>
            <img id="imgVerify" src="img.jpeg" runat="server"/>
            <br/>
            <asp:Button ID="btnGetAnotherImg" runat="server" Text="Show Me Another Image String" OnClick="btnGetAnotherImg_Click"/>
            <br />
        <asp:Label ID="lblCaptcha" runat="server" Text="Enter Captcha"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblAlertCaptcha" runat="server" ForeColor="Red" Text="Captcha don't match" Visible="False"></asp:Label>
            
        </div>
        <asp:Button ID="btnSignUp" runat="server" Text="Register" OnClick="btnSignUp_Click" />
        </div>
    </form>
</body>
</html>
