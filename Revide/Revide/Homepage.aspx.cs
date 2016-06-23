using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using Revide.DataLayer;
namespace Revide
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       int i = 1;
       protected void Page_Load(object sender, EventArgs e)
       {
           

           Query q = new Query();
           DataTable dt = q.getBanner();
           DataTable movies, tvshows, webseries, recommended;
           movies = q.getMovies();
           tvshows = q.getTV();
           webseries = q.getWEB();
           recommended = q.getRecommend();




           rptBanner.DataSource = dt;
           rptBanner.DataBind();
           rpt_movies.DataSource = movies;
           rpt_movies.DataBind();
           rpt_tv.DataSource = tvshows;
           rpt_tv.DataBind();
           rpt_web.DataSource = webseries;
           rpt_web.DataBind();
           rpt_recommended.DataSource = recommended;
           rpt_recommended.DataBind();





           if (dt.Rows.Count > 0)
           {
               for (int i = 0; i < dt.Rows.Count; i++)
               {
                   if (i == 0)
                   {
                       HtmlGenericControl li = new HtmlGenericControl("li");
                       li.Attributes.Add("data-target", "#myCarousel");
                       li.Attributes.Add("data-slide-to", i.ToString());
                       li.Attributes.Add("class", "active");
                       li.Attributes.Add("margin-right", "50px");
                       olBanner.Controls.Add(li);

                   }
                   else
                   {
                       HtmlGenericControl li = new HtmlGenericControl("li");
                       li.Attributes.Add("data-target", "#myCarousel");
                       li.Attributes.Add("data-slide-to", i.ToString());

                       olBanner.Controls.Add(li);
                   }
                   //olBanner.Attributes.Add(
               }
           }
       }

        public void rptBanner_ItemDataBound(object source, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType != ListItemType.Item && e.Item.ItemType != ListItemType.AlternatingItem)
                return;
            if (i == 1)
            {
                ((HtmlGenericControl)(e.Item.FindControl("divItem"))).Attributes["class"] = "item active";
            }
            i++;
        }



    }
}