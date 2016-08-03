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
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Query q = new Query();
            DataTable d = q.getVideo();
            rpt_videoreport.DataSource = d;
            rpt_videoreport.DataBind();
        }
    }
}