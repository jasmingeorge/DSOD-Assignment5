using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace Assignment5.Staff
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["user"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                //Do nothing
            }
            else
            {
                txtUserName.Text = myCookies["Name"];
                txtPassword.Value = myCookies["Password"];
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Staff.xml");
            XmlDocument doc = new XmlDocument();
            doc.Load(fLocation);

            XmlElement elmRoot = doc.DocumentElement;
            XmlNodeList elements = elmRoot.GetElementsByTagName("staff");
            foreach (XmlElement element in elements)
            {
                if (element.GetAttribute("UserName") == txtUserName.Text &&
                    element.GetAttribute("Password") == txtPassword.Value)
                {
                    HttpCookie myCookies = new HttpCookie("user");
                    if ((myCookies == null) || (myCookies["Name"] == ""))
                    {
                        myCookies["Name"] = txtUserName.Text;
                        myCookies["Password"] = txtPassword.Value;
                        myCookies.Expires = DateTime.Now.AddMonths(6);
                        Response.Cookies.Add(myCookies);
                    }
                    Session["isLoggedIn"] = true;
                    Session["Name"] = txtUserName.Text;
                    if (element.GetAttribute("isAdmin") == "y")
                    {
                        Session["userType"] = "Admin";
                        Response.Redirect("AdminPage.aspx");
                    }
                    else
                    {
                        Session["userType"] = "Staff";
                        Response.Redirect("StaffPage.aspx");
                    }
                    break;
                }
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}