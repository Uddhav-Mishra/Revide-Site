using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Revide.DataLayer;
using System.Data;
using System.IO;
using System.Text;

namespace Revide
{
    public partial class UserProfileShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 1; 
            Query q = new Query();
            DataTable d = q.getUserProfile(id);
            rpt_userprofile.DataSource = d;
            rpt_userprofile.DataBind();
        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateProfile.aspx");
        }

        
    }
}