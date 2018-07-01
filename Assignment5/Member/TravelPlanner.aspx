<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelPlanner.aspx.cs" Inherits="Assignment5.Member.TravelPlanner" %>
<%@ Register TagPrefix = "a5" TagName="currentTime" 
			src="~/CurrentTime.ascx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 358px;
        }
        .auto-style2 {
            width: 611px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1>
                <table style="width: 99%;">
                    <tr>
                        <td class="auto-style2">
                            <h1>Travel Planner</h1>
                        </td>
                        <td class="auto-style1"><a5:currentTime runat = "server" /></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </h1>
            <h1>1. Find the Nearest Place</h1>
            <p class="lead">Uses google place api to get the result when a zip code and place name is given as input</p>
            <p>
                <asp:Label ID="lblZipCodeFindNearest" runat="server" Text="Zip Code"></asp:Label>
                <asp:TextBox ID="txtZipCodeFindNearest" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblPlaceFindNearest" runat="server" Text="Place"></asp:Label>
                <asp:TextBox ID="txtPlaceFindNearest" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnFindNearestPlace" runat="server" Text="Submit" OnClick="btnFindNearestPlace_Click" />
                <br />
                <asp:Label ID="lblNearestPlaceResult" runat="server" Text=""></asp:Label>
            </p>
        </div>
        <div class="jumbotron">
            <h1>2. Weather Service</h1>
            <p class="lead">This service gives a 5 day weather forecast of zipcode location based on the 
                national weather service at: http:\//graphical.weather.gov/xml/SOAP_server/ndfdXMLserver.php?wsdl.</p>
            <p>
                <asp:Label ID="lblZipCodeWeatherService" runat="server" Text="Zip Code"></asp:Label>
                <asp:TextBox ID="txtZipCodeWeatherService" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnGetWaetherForecast" runat="server" Text="Get Weather Forecast" OnClick="btnGetWaetherForecast_Click" />
                <br />
                <asp:Label ID="lblWeatherResult" runat="server" Text=""></asp:Label>
                <asp:Table ID="tblWeatherForecast" runat="server" BorderStyle="Solid" BorderWidth="1px" CellPadding="2" CellSpacing="2" GridLines="Both">
                </asp:Table>
            </p>
        </div>

        <div class="jumbotron">
            <h1>3. Gas Station Service</h1>
            <p class="lead">This service gives the list of gas stations in a city of a given state</p>
            <p>
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblState" runat="server" Text="State (code)"></asp:Label>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnGasStations" runat="server" Text="Get Gas Stations" OnClick="btnGasStations_Click" />
                <br />
                <asp:Table ID="tblGasStations" runat="server" BorderStyle="Solid" BorderWidth="1px" CellPadding="2" CellSpacing="2" GridLines="Both">
                </asp:Table>
            </p>
        </div>
    </form>
</body>
</html>
