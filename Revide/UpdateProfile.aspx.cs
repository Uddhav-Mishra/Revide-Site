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

namespace WebApplication7
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["userID"]); 
            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }
                using (SqlCommand cm = new SqlCommand("getProfilePhoto", conn))
                {
                    cm.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
                    cm.CommandType = CommandType.StoredProcedure;
                    string s = (string)cm.ExecuteScalar();
                    
                        s = "~/" + s;
                        VoteUpOff.Attributes["src"] = ResolveUrl(s);
                    
                }
            }
        }
        // id will be a session variable and will be provided by previous pages
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = tb1.Text.Trim();
            string email = tb2.Text.Trim();
            string age = tb3.Text.Trim();
            string phone = tb4.Text.Trim();
            string country = tb5.Text.Trim();

            Image img = new Image();
            string filename = Path.GetFileName(fileuploadimages.PostedFile.FileName);
            fileuploadimages.SaveAs(Server.MapPath("images/Profile/" + filename));
            string imgdest = "images/Profile/" + filename;

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("UpdateProfile", conn))
                {
                    cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Convert.ToInt32(Session["userID"]);
                    cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                    cmd.Parameters.Add("@age", SqlDbType.VarChar).Value = age;
                    cmd.Parameters.Add("@phone", SqlDbType.VarChar).Value = phone;
                    cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = country;
                    cmd.Parameters.Add("@imgdest", SqlDbType.VarChar).Value = imgdest;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();

                    Response.Redirect("UserProfileShow.aspx");
                }
            }
        }

    }
}

/*
 * 
 * id = sesion variable
 * alter procedure UpdateProfile(
@id int ,
@name varchar(50) ,
@email varchar(50),
@age varchar(50),
@phone varchar(50),
@country varchar(50)
)
as
begin
update UserDetails
set country=@country,Age=@age,Phone=@phone,EmailID=email  where UserID=@id ;
end

*/