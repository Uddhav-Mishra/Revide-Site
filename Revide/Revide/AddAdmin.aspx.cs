using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlTypes;
using System.IO;
using System.Configuration; 

namespace Revide
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string RoleID = tb1.Text.Trim();
            string Username = tb2.Text.Trim();
            string LoginID = tb3.Text.Trim();
            string Password = tb4.Text.Trim();
            DateTime UpdatedOn = Convert.ToDateTime(tb5.Text.Trim());



            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }


                using (SqlCommand cmd = new SqlCommand("AddAdmin", conn))
                {
                    //cmd.Parameters.Add("@id", SqlDbType.VarChar).Value =id;
                    cmd.Parameters.Add("@RoleID", SqlDbType.VarChar).Value = RoleID;
                    cmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username;
                    cmd.Parameters.Add("@LoginID ", SqlDbType.VarChar).Value = LoginID;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password;
                    cmd.Parameters.Add("@UpdatedOn", SqlDbType.DateTime).Value = UpdatedOn;
                    
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();

                }
            }

        }

    }
}