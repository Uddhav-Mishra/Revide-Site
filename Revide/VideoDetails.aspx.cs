using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Net;
using Revide.DataLayer;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;



namespace Revide
{
    public partial class VideoDetails : System.Web.UI.Page
    {

        WebClient client = new WebClient();
        string videoname="";
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["video_id"];
            Query q = new Query();
            if (id==null)
                id = "1";
            int star = 0;
            //q.getVideoDetails(Int32.Parse(id));

            int n=0;
            

            double rates = 0;

            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                connection.Open();


                using (SqlCommand command = new SqlCommand("SELECT * from Videos where ID=\'" + id + "\'", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        
                        name.InnerText = reader.GetString(1);
                        release_date.InnerText = reader.GetDateTime(5).ToString();
                        genre.InnerText = reader.GetString(6);
                        adult_rating.InnerText = reader.GetString(7);
                        if (reader.GetString(10) != null)
                            info.InnerText = reader.GetString(10);
                        else
                            info.InnerText = "No Description available.";
                        //star = (int)reader.GetDouble(8);
                        //Overall_rating.InnerText += "Overall rating "+reader.GetDouble(8).ToString();
                        

                    }
                    reader.Close();
                }
                using (SqlCommand command = new SqlCommand("SELECT count(*) from Rating where VideoID=\'" + id + "\' and StarsGiven=1", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                    {
                        //stars1.InnerText+= reader.GetInt32(0);
                        rates += reader.GetInt32(0) *1.0  ;
                        n += reader.GetInt32(0);
                        stars1.InnerText = rates.ToString();
                    }
                reader.Close();
                }

                using (SqlCommand command = new SqlCommand("SELECT count(*) from Rating where VideoID=\'" + id + "\' and StarsGiven=2", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                    {
                        //stars1.InnerText += reader.GetInt32(0);
                        rates += reader.GetInt32(0) *2.0;
                        n += reader.GetInt32(0);
                        stars2.InnerText = reader.GetInt32(0).ToString();
                    }
                reader.Close();
                }
                using (SqlCommand command = new SqlCommand("SELECT count(*) from Rating where VideoID=\'" + id + "\' and StarsGiven=3", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                    {
                        //stars1.InnerText += reader.GetInt32(0);
                        rates += reader.GetInt32(0) * 3.0;
                        n += reader.GetInt32(0);
                        stars3.InnerText = reader.GetInt32(0).ToString();
                    }
                reader.Close();
                }
                using (SqlCommand command = new SqlCommand("SELECT count(*) from Rating where VideoID=\'" + id + "\' and StarsGiven=4", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                    {
                        //stars1.InnerText += reader.GetInt32(0);
                        rates += reader.GetInt32(0) * 4.0;
                        n += reader.GetInt32(0);
                        stars4.InnerText = reader.GetInt32(0).ToString();
                    }
                reader.Close();
                }
                using (SqlCommand command = new SqlCommand("SELECT count(*) from Rating where VideoID=\'" + id + "\' and StarsGiven=5", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        //stars1.InnerText += reader.GetInt32(0);
                        rates += reader.GetInt32(0) * 5.0;
                        n += reader.GetInt32(0);
                        stars5.InnerText = reader.GetInt32(0).ToString();
                    }
                    reader.Close();
                }
            }
            //info.InnerText = "Overall rating ";


            //if (info.InnerText.ToString() == null)
             //   info.InnerText = "No Description available.";

            //Overall_rating.InnerText += (rates / n).ToString();

            if ((rates / n).ToString() != "NaN")
            {
                
                star = (int)Math.Floor((rates / n));
                Overall_rating.InnerText += (rates / n).ToString();
            }
            else
            {
                star = 0;
                Overall_rating.InnerText += "NOT RATED YET.";
            }



            string s = name.InnerText;
            string moviename ="";

            string[] words = s.Split(' ');
            foreach (string word in words)
            {
                moviename += word+"+";
            }
            moviename += "trailer";

            //if (star == 0) stars.InnerText = "Not Rated Yet";
            //else
            for (int x = 0; x < star; x++)
            {
                stars.InnerHtml += " <span class=\"glyphicon glyphicon-star\"></span>";
            }

            DataTable movies, reviews;
            movies = q.getMovies();
            reviews = q.getReviews(id);
            rpt_reviews.DataSource = reviews;
            rpt_reviews.DataBind();
            recommend.DataSource = movies;
            recommend.DataBind();


            videoname = moviename;

            string reply = client.DownloadString("https://www.youtube.com/results?search_query=" + moviename);

            youtube_frame.Attributes.Add("src", Embed(reply));


        }

        public String Embed(string s)
        {
            int n = s.Length, slash = 0;
            int index = s.IndexOf("/watch?v=");
            index = index + "/watch?v=".Length;
            string re = "https://www.youtube.com/embed/";
            //string re="";
            for (int i = index; i < n; i++)
            {
                if (s[i] == '"') break;

                else re += "" + s[i];
            }

            return re + "/?autoplay=1";

        }
        public String code(string s)
        {
            int n = s.Length, slash = 0;
            int index = s.IndexOf("https://in.bookmyshow.com/movies/");
            index = index + "https://in.bookmyshow.com/movies/".Length;
            string re = "https://in.bookmyshow.com/movies/";
            //string re="";
            for (int i = index; i < n; i++)
            {
                if ((slash == 1 && s[i] == '/') || s[i] == '"' || s[i] == '&') break;
                if (s[i] == '/')
                {
                    re += "" + s[i];
                    slash++;
                }
                else re += "" + s[i];
            }

            return re;
        }
        protected void btn_book_Click(object sender, EventArgs e)
        {
            string moviename = videoname;
            
            client.Credentials = new NetworkCredential("username", "password");
            string reply = client.DownloadString("https://www.google.co.in/search?q=" + moviename + "+bookmyshow");

            Response.Redirect(code(reply));
        }

        protected void btn_rateSubmit(object sender, EventArgs e)
        {

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("InsertRatings", conn))
                {
                    //Session["Userid"] = 1.ToString();
                    //Session["VideoId"] = 2.ToString();

                    if (Session["userID"] != null)
                    {
                        cmd.Parameters.Add("@VideoId", SqlDbType.Int).Value = Request.QueryString["video_id"];
                        cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = Session["userID"].ToString();
                        cmd.Parameters.Add("@comment", SqlDbType.VarChar).Value = comment.Text;
                        cmd.Parameters.Add("@stars", SqlDbType.Int).Value = Int32.Parse(rateValue.Value);
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.ExecuteNonQuery();
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Kindly Login before submitting a review/rating');", true);
                        Response.Redirect("UserLogin.aspx");
                    }
                }
            }
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Your rating has been submitted.Thanks for your time.!');", true);
            test.Visible = false;

        }
        protected void rpt_reviews_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {


            int stars_display=0;
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string ID = DataBinder.Eval(e.Item.DataItem, "ID").ToString();
                HtmlTableCell td = (HtmlTableCell)e.Item.FindControl("td1");
                HtmlGenericControl myDiv = new HtmlGenericControl("div");
                using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
                {
                    connection.Open();
                    

                    using (SqlCommand command = new SqlCommand("SELECT * FROM Rating where ID=\'" + ID + "\'", connection))
                    {
                        SqlDataReader reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            /*int weight = reader.GetInt32(0);    // Weight int
                            string name = reader.GetString(1);  // Name string
                            string breed = reader.GetString(2); // Breed string
                            */
                            stars_display = reader.GetInt32(3);
                            //
                            // Write the values read from the database to the screen.
                            //
                            //Console.WriteLine("Weight = {0}, Name = {1}, Breed = {2}",
                            //weight, name, breed);


                        }
                    }
                }
                for(int x=0;x<stars_display;x++)
                    myDiv.InnerHtml += " <span class=\"glyphicon glyphicon-star\"></span>";
                /*Label lblName = new Label();
                lblName.ID = "lblName";
                lblName.Text = "This is added label";
                myDiv.Controls.Add(lblName);*/
                td.Controls.Add(myDiv);
            }
        }


    }
}