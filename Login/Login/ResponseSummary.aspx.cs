using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_click(object sender, EventArgs e)
        {
            SqlConnection vid = new SqlConnection("Data Source=(local);Initial Catalog=master;User ID=sa; password='asdf@1234';");

            {
                SqlCommand sc = new SqlCommand("Insert into database1(UserId,Password) Values(@UserId,@Password)", vid);
                sc.Parameters.AddWithValue("@UserId", txtUserId.Text);
                sc.Parameters.AddWithValue("@Password", txtPassword.Text);
                vid.Open();
                sc.ExecuteNonQuery();
                vid.Close();

                if (IsPostBack)
                {
                    lblStatus.Text = "Successfully added data";
                    lblUserId.Text = "";
                    txtPassword.Text = "";
                }
            }
        }


    }
}