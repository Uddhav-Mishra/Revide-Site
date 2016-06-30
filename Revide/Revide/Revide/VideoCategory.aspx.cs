using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Revide.DataLayer;
using System.Data;

namespace Revide
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = 1;
            if(Request.QueryString["page_id"]!=null)
            i= Int32.Parse( Request.QueryString["page_id"]);


            Query q = new Query();
            DataTable d = q.getAll();
            rpt_pg.DataSource = d;
            rpt_pg.DataBind();
            int n = (int)(Math.Ceiling(d.Rows.Count/5.0));


            //Query q = new Query();
            DataTable dt = q.getByCategoryPages(i);
            rpt_pg.DataSource = dt;
            rpt_pg.DataBind();
            if (!IsPostBack)
            {
                for (int x = 0; x <= n; x++)
                {
                    HtmlGenericControl li = new HtmlGenericControl("li");
                    //li.Attributes.Add("data-target", "#no_pages");
                    //li.Attributes.Add("data-slide-to", 5.ToString());
                    //li.Attributes.Add("class", "active");
                    //li.Attributes.Add("margin-right", "50px");
                    li.InnerHtml = "<a href=\"VideoCategory.aspx?page_id=" + (x + 1).ToString() + "\">" + (x + 1).ToString() + "</a>";
                    // li.InnerText = (i + 1).ToString() ;
                    //li.InnerText = "<a href=''>" + i.ToString() + "</a>";
                    pages.Controls.Add(li);
                }

            }
        }
    }
}