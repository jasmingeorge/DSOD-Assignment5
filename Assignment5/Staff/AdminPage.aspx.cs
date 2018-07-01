using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment5.Staff
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLoggedIn"] == null || !(bool)Session["isLoggedIn"])
            {
                Response.Redirect("~/Logout.aspx");
            }
            else if (Session["userType"] == null || (string)Session["userType"] != "Admin")
            {
                Response.Redirect("~/Logout.aspx");
            }
            lblWelcome.Text = "Hi " + Session["Name"] + " , Welcome to the Admin Page";
        }
    }
}