using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace Assignment5.Member
{
    public partial class SignUp : System.Web.UI.Page
    {
        ImageVerifier.ServiceClient imageVerifier = new ImageVerifier.ServiceClient();
        string verifierString;
        protected void Page_Load(object sender, EventArgs e)
        {
            verifierString = imageVerifier.GetVerifierString("4");
            Stream uri = imageVerifier.GetImage(verifierString);
            System.Drawing.Image img = System.Drawing.Image.FromStream(uri);

            img.Save(Path.Combine(Request.PhysicalApplicationPath, @"Member\img.jpeg"), ImageFormat.Jpeg);
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if(txtPassword.Value == txtPassword2.Value && txtCaptcha.Text == verifierString)
            {
                string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Members.xml");
                XDocument doc = XDocument.Load(fLocation);
                XElement member_element = new XElement("Member");
                member_element.Add(new XAttribute("UserName", txtUserName.Text));
                member_element.Add(new XAttribute("Password", txtPassword.Value));
                doc.Element("Members").Add(member_element);
                doc.Save(fLocation);

                HttpCookie myCookies = new HttpCookie("user");
                if ((myCookies == null) || (myCookies["Name"] == ""))
                {
                    myCookies["Name"] = txtUserName.Text;
                    myCookies["Password"] = txtPassword.Value;
                    myCookies.Expires = DateTime.Now.AddMonths(6);
                    Response.Cookies.Add(myCookies);
                }
                lblSuccess.Visible = true;
                lblAlert.Visible = false;
                
            } else
            {
                lblAlert.Visible = txtPassword.Value == txtPassword2.Value ? false : true;
                lblAlertCaptcha.Visible = txtCaptcha.Text == verifierString ? false : true;
            }
        }

        protected void btnGetAnotherImg_Click(object sender, EventArgs e)
        {
            verifierString = imageVerifier.GetVerifierString("4");
            Stream uri = imageVerifier.GetImage(verifierString);
            System.Drawing.Image img = System.Drawing.Image.FromStream(uri);

            img.Save(Path.Combine(Request.PhysicalApplicationPath, @"Member\img.jpeg"), ImageFormat.Jpeg);
        }
    }
}