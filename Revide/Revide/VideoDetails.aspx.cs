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



namespace Revide
{
    public partial class VideoDetails : System.Web.UI.Page
    {

        WebClient client = new WebClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            string moviename = "xmen+apocalypse";
            
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

            return re+"/?autoplay=1";

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
            string moviename = "xmen+apocalypse";
            client.Credentials = new NetworkCredential("username", "password");
            string reply = client.DownloadString("https://www.google.co.in/search?q="+moviename+"+bookmyshow");

             Response.Redirect(code(reply));
        }




    }
}