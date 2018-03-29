using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Revide.DataLayer;
using System.Data;
using System.Data.SqlClient;

namespace Revide
{
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Query q = new Query();
            DataTable d = q.getChats();
            rpt_chat.DataSource = d;
            rpt_chat.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("InsertChat", conn))
                {
                    cmd.Parameters.Add("@SentID", SqlDbType.Int).Value = Convert.ToInt32(Session["userID"]);
                    cmd.Parameters.Add("@Chat", SqlDbType.VarChar).Value = chatBox.Text;
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.ExecuteNonQuery();

                }
            }

            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("Delete from Chats", conn))
                {
                    cmd.ExecuteNonQuery();
                }

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
        }
    }
}