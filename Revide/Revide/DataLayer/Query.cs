using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Revide.DataLayer
{
    public class Query
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ConnectionString);
        public DataTable getVideoDetails(int id)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from Videos where id=\'"+id.ToString()+"\'", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getBanner()
        {
            
            SqlDataAdapter sda = new SqlDataAdapter("getBanner", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getMovies()
        {
            SqlDataAdapter sda = new SqlDataAdapter("getMovies", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getChats()
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Chats", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getTV()
        {
            SqlDataAdapter sda = new SqlDataAdapter("getTV", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getWEB()
        {
            SqlDataAdapter sda = new SqlDataAdapter("getWEB", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getRecommend()
        {
            SqlDataAdapter sda = new SqlDataAdapter("getRecommended", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getAll(string category)
        {
            SqlDataAdapter sda;
            if(category==null)
             sda= new SqlDataAdapter("select * from [Videos]", con);
            else
            sda = new SqlDataAdapter("select * from [Videos] where Genre=\'"+category+"\'", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }

        public DataTable getByCategoryPages(string category,int page_no)
        {
            SqlDataAdapter sda=null;
            if(category==null)
               sda = new SqlDataAdapter("select top 5 * from (select *, ROW_NUMBER() over (order by ID) as r_n_n from [Videos] )xx where r_n_n >="+(5*page_no+1).ToString(), con);
            else
                sda = new SqlDataAdapter("select top 5 * from (select *, ROW_NUMBER() over (order by ID) as r_n_n from [Videos] where Genre=\'" + category + "\'" + ")xx where r_n_n >=" + (1+5 * page_no).ToString(), con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }


        public DataTable getReviews(string id)
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select TOP 4 * from Reviews r join [User] u on r.review_by=u.ID where videoID=\'" + id + "\' order by Dated desc", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
            //sda.GetFillParameters();
        }
        public DataTable getUserDetails()
        {
            SqlDataAdapter sda = new SqlDataAdapter("getUserDetails", con);
           DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getVideoReport()
        {
            SqlDataAdapter sda = new SqlDataAdapter("getMovieReport", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getAllUserReport()
        {
            SqlDataAdapter sda = new SqlDataAdapter("getAllUserDetails", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }

       /* public string getUser(int userid)
        {

            string name;
          
        }*/

        public DataTable getProfilePhoto()
        {
            SqlDataAdapter sda = new SqlDataAdapter("getProfilePhoto", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }


        public DataTable getUserProfile(int x)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from UserDetails ud join [User] u on ud.UserID=u.ID where ud.UserID =\'"+x.ToString()+ "\'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getUser()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from [User]", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }

       
        public DataTable getUserDetails2()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from [User] where RoleID=1", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
              
      
        public DataTable getVideo()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from [Videos]", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }      
       
       
    }
}