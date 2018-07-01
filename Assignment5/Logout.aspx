<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Assignment5.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="You have not logged in"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/Login.aspx">Please Login</asp:HyperLink>
        </div>
    </form>
</body>
</html>
