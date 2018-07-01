<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffPage.aspx.cs" Inherits="Assignment5.Staff.StaffPsge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="lblWelcome" runat="server" Text="Welcome!"></asp:Label>
             <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/TravelPlanner.aspx">Go to travel site</asp:HyperLink>
        </div>
    </form>
</body>
</html>
