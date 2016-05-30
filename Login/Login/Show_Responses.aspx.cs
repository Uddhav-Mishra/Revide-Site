using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace feedbackprogramme
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
                SqlDataAdapter sda = new SqlDataAdapter("select * from [userresponses] where username=\'" + Request.QueryString["lgnid"] + "\'", con);

                DataTable dt = new DataTable();
                sda.Fill(dt);
                repeater_result.DataSource = dt;
                repeater_result.DataBind();
            }
        }




    }
}