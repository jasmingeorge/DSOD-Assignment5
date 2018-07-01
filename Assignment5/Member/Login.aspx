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
    <hr />
    <div>
        <h2>Services available:</h2>
        
&nbsp;<table border="1" style="width:100%;">
            <tr>
                <th>Provider Name</th>
                <th>Service name, with input and output types</th>
                <th>Service Desription</th>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Login</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>SignUp</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Captcha </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>User Control</td>
                <td>Date user control embedded in travel planner which shows the current Date</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Session and Cookies</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>User data storage in xml</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Jasmin George</td>
                <td>Place Search Input: string (zipcode), string (search string) Output: string</td>
                <td>This service takes zipcode and string as input and returns the details of the place fetched from the google place api.<br />
                    Uses google place API to fetch the place details. https://maps.googleapis.com/maps/api/place/nearbysearch/output?parameters</td>
            </tr>
            <tr>
                <td>Jasmin George</td>
                <td>Weather data Input: a U.S. zipcode Output: An array (or list) of strings, storing 5-day weather forecast for the given zipcode location.</td>
                <td>This service shows the weather forecast for a given area.<br />
                    Uses accuweather API to fetch the weather forecast http://dataservice.accuweather.com/forecasts/v1/daily/5day/</td>
            </tr>
            <tr>
                <td>Jasmin George</td>
                <td>Gas Stations Input: string (city), string (state code) Output: string</td>
                <td>This service takes city and state code as input and returns the gas stations in that area.<br />
                    Uses nrel.gov API to fetch the gas stations data. https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=</td>
            </tr>
        </table>
    </div>
</body>
</html>
