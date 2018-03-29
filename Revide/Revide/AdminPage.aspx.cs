using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Revide
{
    public partial class WebForm9 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string Num_of_user = "100";
            string active_users = "95";
            string blocked_users = "5";
            string total_videos = "200";

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("badge_values", conn))
                {


                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    //DataSet count_user;
                    DataSet count_user = new DataSet();
                    da.Fill(count_user);


                    active_users = count_user.Tables[0].Rows[0][0].ToString();
                    Num_of_user = count_user.Tables[0].Rows[1][0].ToString();
                    total_videos = count_user.Tables[0].Rows[2][0].ToString();

                }
            }
            spn1.InnerText = Num_of_user;
            spn2.InnerText = active_users;
            spn3.InnerText = blocked_users;
            spn4.InnerText = total_videos;
        }

        /*protected void Button1_Click(object sender, EventArgs e)
        {

            string Password = tb2.Text.Trim();
            string EmailID = tb3.Text.Trim();
            DateTime UpdatedOn = Convert.ToDateTime(tb4.Text.Trim());

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("UpdateAdmin", conn))
                {  //cmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password;
                    cmd.Parameters.Add("@EmailID", SqlDbType.VarChar).Value = EmailID;
                    cmd.Parameters.Add("@UpdatedOn", SqlDbType.DateTime).Value = UpdatedOn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();
                }
            }
        }*/


    }
}