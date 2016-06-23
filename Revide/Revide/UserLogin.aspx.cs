using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;

namespace Revide
{
    public class FaceBookUser
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string UserName { get; set; }
        public string PictureUrl { get; set; }
        public string Email { get; set; }
    }
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            FaceBookConnect.API_Key = "1058520977576073";
            FaceBookConnect.API_Secret = "be9b40a36046434b498a40e2902a8e2d";
            if (!IsPostBack)
            {
                if (Request.QueryString["error"] == "access_denied")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has denied access.')", true);
                    return;
                }

                string code = Request.QueryString["code"];
                if (!string.IsNullOrEmpty(code))
                {
                    string data = FaceBookConnect.Fetch(code, "me");
                    FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);
                    faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);

                    userNameFromFBGoogle.Value=faceBookUser.Name;
                    emailIDFromFBGoogle.Value = faceBookUser.Email;
                 
                }
            }
        }

        protected void Login(object sender, EventArgs e)
        {
            FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!((string.IsNullOrWhiteSpace(email.Text)) || string.IsNullOrWhiteSpace(password.Text) || string.IsNullOrWhiteSpace(passwordRepeat.Text)))
            {
                if (password.Text != passwordRepeat.Text)
                {
                    Response.Write("<script>alert('Passwords do not match');</script>");
                }
                else
                {
                    using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
                    {
                        if (conn.State != ConnectionState.Open)
                        {
                            conn.Open();
                        }

                        using (SqlCommand cmd = new SqlCommand("InsertSignUpDetails", conn))
                        {
                            cmd.Parameters.Add("@RoleID", SqlDbType.Int).Value = 1;
                            cmd.Parameters.Add("@UserName", SqlDbType.NChar).Value = email.Text;
                            cmd.Parameters.Add("@LoginID", SqlDbType.NChar).Value = email.Text;
                            cmd.Parameters.Add("@Password", SqlDbType.NChar).Value = password.Text;
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.ExecuteNonQuery();
                        }
                    }

                    Response.Redirect("PostLogin.aspx");

                }
            }

            else
            {
                Response.Write("<script>alert('Enter all the fields');</script>");

            }

        }

        protected void Button2_Click(object sender, EventArgs e) { 
        }
    }
}