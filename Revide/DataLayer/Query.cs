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
        public DataTable getAll()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from [Videos]", con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable getByCategoryPages(int page_no)
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from [Videos] where ID>" + (5*page_no).ToString() +" and ID<= "+ (5*page_no+5).ToString(), con);
            //sda.GetFillParameters();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
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
    }
}