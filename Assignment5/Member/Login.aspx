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
        
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Staff/Login.aspx">Go to admin login</asp:HyperLink>
        
                <br />
                </form>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <hr />
    <div>
        <h2>Access controls and permissions:</h2>
        Use logout button on the travel planner to go clear session and go back to login page. 
        Use the following credential to access various parts of the site. 
        Each user will be able to access only a set of pages as described below.<br />
&nbsp;<table border="1" style="width:100%;">
            <tr>
                <th>User</th>
                <th>SignUp page</th>
                <th>Travel Planner Page access</th>
                <th>Staff Landing page access</th>
                <th>Admin Landing page access</th>
            </tr>
            <tr>
                <td>Normal User:<br />
                    [Username: user1 Password: pass1]</td>
                <td>Yes </td>
                <td>Yes</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Staff User:<br />
                    [Username: John Password: 123]</td>
                <td>No</td>
                <td>Yes</td>
                <td>Yes</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Admin User:<br />
                    [Username: admin Password: admin]</td>
                <td>No</td>
                <td>Yes</td>
                <td>Yes</td>
                <td>Yes</td>
            </tr>
        </table>
    </div>
</body>
</html>
