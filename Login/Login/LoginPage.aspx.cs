using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Login_page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_button_Click(object sender, EventArgs e)
        {
            string loginId = txtusername.Text.Trim();
            string password = txtpassword.Text.Trim();

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("AuthenticateUser", conn))
                {
                    cmd.Parameters.Add("@LoginId", SqlDbType.NVarChar).Value = loginId;
                    cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = password;
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet dsUser = new DataSet();
                    da.Fill(dsUser);

                    if (dsUser != null && dsUser.Tables.Count > 0 && dsUser.Tables[0].Rows.Count > 0)
                    {
                        Session["UserId"] = dsUser.Tables[0].Rows[0][0].ToString();
                        Response.Redirect("StudentFeedback.aspx");
                    }
                }
            }
        }
    }
}
