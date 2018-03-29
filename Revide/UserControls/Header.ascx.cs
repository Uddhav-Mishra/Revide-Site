using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace Revide.UserControls
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine(Session["username"]);

            if (Session["username"] != null)
            {
                SignIn.Text = Session["username"].ToString();
                SignUp.Text = "Logout";
                signInHref.HRef = "~/UserProfileShow.aspx";
                signUpHref.HRef = "~/Homepage.aspx";
                logmeout2.Attributes["class"] = "showme";
            }
            else {
                SignIn.Text = "Login";
                SignUp.Text = "SignUp";
                signInHref.HRef = "~/UserLogin.aspx";
                signUpHref.HRef = "~/UserLogin.aspx";
                logmeout2.Attributes["class"] = "hideme";
            }
           
        }
        protected void LogMeOut(object sender, EventArgs e) { 
            Session["username"] = null;
            Response.Redirect("~/Homepage.aspx");
        
        }
    }
}