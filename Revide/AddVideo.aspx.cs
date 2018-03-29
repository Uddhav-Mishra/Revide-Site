using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlTypes;
using System.IO ;
using System.Configuration; 

namespace Revide
{
    public partial class AddVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Title = tb1.Text.Trim();
            string FullTitle = tb2.Text.Trim();
            string Language = tb3.Text.Trim();
            DateTime ReleaseDate = Convert.ToDateTime(tb4.Text.Trim());
            string Genre = tb5.Text.Trim();
            string AdultRating = tb6.Text.Trim();
            string type = type_text.Text.Trim();
            string Syn = tb7.Text.Trim();

            Image img = new Image();
            //imgA.Controls.Add(img);
            string filename = Path.GetFileName(fileuploadimages.PostedFile.FileName);
            fileuploadimages.SaveAs(Server.MapPath("images/MediaImages/" + filename));
            string imgdest = "images/MediaImages/" + filename;
            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

          using (SqlCommand cmd = new SqlCommand("AddMovies", conn))
                {
                    //cmd.Parameters.Add("@id", SqlDbType.VarChar).Value =id;
                    cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = Title;
                    cmd.Parameters.Add("@FullTitle", SqlDbType.VarChar).Value = FullTitle;
                    cmd.Parameters.Add("@Language", SqlDbType.VarChar).Value = Language;
                    cmd.Parameters.Add("@ReleaseDate", SqlDbType.DateTime).Value = ReleaseDate;
                    cmd.Parameters.Add("@Genre", SqlDbType.VarChar).Value = Genre;
                    cmd.Parameters.Add("@AdultRating", SqlDbType.VarChar).Value = AdultRating;
                    cmd.Parameters.Add("@description", SqlDbType.VarChar).Value = Syn;
                    cmd.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                    cmd.Parameters.Add("@imgdest", SqlDbType.VarChar).Value = imgdest;
                    //cmd.Parameters.Add(new SqlParameter("@img", img));
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();
                    
                }
            }

         }
    }
}