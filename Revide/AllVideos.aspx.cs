using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Revide.DataLayer;
using System.Data;
using System.Web.UI.HtmlControls;

namespace Revide
{
    public partial class AllVideos : System.Web.UI.Page
    {
        static int i = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["page_id"] != null)
                i = Int32.Parse(Request.QueryString["page_id"]);
            Query q = new Query();
            DataTable dt = q.getAll();
            rpt_pg.DataSource = dt;
            rpt_pg.DataBind();
            int n = dt.Rows.Count/5;
            dt = q.getByCategoryPages(i-1);
            rpt_pg.DataSource = dt;
            rpt_pg.DataBind();

            for (int x = 0; x <= n; x++)
            {
                HtmlGenericControl li = new HtmlGenericControl("li");
                
                li.InnerHtml = "<a href=\"AllVideos.aspx?page_id=" + (x + 1).ToString() + "\">" + (x + 1).ToString() + "</a>";
                
                pages.Controls.Add(li);
            }

        }
    }
}