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
        static int i = 0;
        static string category=null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["category"] != "")
                    category = Request.QueryString["category"];
                Session["genre"] = category;
            }
            else
            {
                if (Request.QueryString["category"] != "")
                    category = Request.QueryString["category"];
                Session["genre"] = category;
            }

            if (Request.QueryString["page_id"] != null)
                i = Int32.Parse(Request.QueryString["page_id"]);
            Query q = new Query();
            DataTable dt = q.getAll(category);
            rpt_pg.DataSource = dt;
            rpt_pg.DataBind();
            int n = (int)Math.Ceiling(dt.Rows.Count / 5.0);
            dt = q.getByCategoryPages(category,i);
            rpt_pg.DataSource = dt;
            rpt_pg.DataBind();
            if (!IsPostBack)
            {
                
                for (int x = 0; x < n; x++)
                {
                    HtmlGenericControl li = new HtmlGenericControl("li");

                    li.InnerHtml = "<a href=\"AllVideos.aspx?page_id=" + (x).ToString() + "\">" + (x+1).ToString() + "</a>";

                    pages.Controls.Add(li);
                }
            }

        }
    }
}