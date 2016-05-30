using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Login_page
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static int questionNo = 0;
        int totalQuestion = 0;
        DataSet dsQuestions = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }

            if (questionNo == 0)
            {
                btnPrevious.Enabled = false;
            }
            else
            {
                btnPrevious.Enabled = true;
            }

            if (questionNo == (totalQuestion - 1))
            {
                btnNext.Enabled = false;
                btnSubmit.Enabled = true;
            }
            else
            {
                btnNext.Enabled = true;
                btnSubmit.Enabled = false;
            }

            if (!Page.IsPostBack)
            {
                btnPrevious.Enabled = false;

                fetch();

                string question = "Question No. : " + questionNo + " " + dsQuestions.Tables[0].Rows[questionNo]["question"].ToString();
                string choice1 = dsQuestions.Tables[0].Rows[questionNo]["Choice1"].ToString();
                string choice2 = dsQuestions.Tables[0].Rows[questionNo]["Choice2"].ToString();
                string choice3 = dsQuestions.Tables[0].Rows[questionNo]["Choice3"].ToString();
                string choice4 = dsQuestions.Tables[0].Rows[questionNo]["Choice4"].ToString();

                lblQuestion.Text = (question);
                lblChoice1.Text = (choice1);
                lblChoice2.Text = (choice2);
                lblChoice3.Text = (choice3);
                lblChoice4.Text = (choice4);
            }
            else
            {
                lblChoice1.Checked = false;
                lblChoice2.Checked = false;
                lblChoice3.Checked = false;
                lblChoice4.Checked = false;
            }
        }

        protected string getSelectedResponse()
        {
            string ans;
            if (lblChoice1.Checked)
            {
                ans = lblChoice1.Text;
            }
            else if (lblChoice2.Checked)
            {
                ans = lblChoice2.Text;
            }
            else if (lblChoice3.Checked)
            {
                ans = lblChoice3.Text;
            }
            else
            {
                ans = lblChoice4.Text;
            }

            return ans;
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            if (ViewState["dsQuestions"] != null)
            {
                dsQuestions = (DataSet)ViewState["dsQuestions"];
            }

            if (ViewState["totalQuestion"] != null)
            {
                totalQuestion = Convert.ToInt32(ViewState["totalQuestion"]);
            }


            if (questionNo > 0)
            {
                questionNo--;
            }
            check(questionNo);
            string question = "Question No. : " + questionNo + dsQuestions.Tables[0].Rows[questionNo]["Question"].ToString();
            string choice1 = dsQuestions.Tables[0].Rows[questionNo]["Choice1"].ToString();
            string choice2 = dsQuestions.Tables[0].Rows[questionNo]["Choice2"].ToString();
            string choice3 = dsQuestions.Tables[0].Rows[questionNo]["Choice3"].ToString();
            string choice4 = dsQuestions.Tables[0].Rows[questionNo]["Choice4"].ToString();

            lblQuestion.Text = (question);
            lblChoice1.Text = (choice1);
            lblChoice2.Text = (choice2);
            lblChoice3.Text = (choice3);
            lblChoice4.Text = (choice4);

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd2 = new SqlCommand("InsertResponses", conn))
                {
                    cmd2.Parameters.Add("@UserId", SqlDbType.Int).Value = Session["UserId"];
                    cmd2.Parameters.Add("@QuestionId", SqlDbType.Int).Value = questionNo;
                    cmd2.Parameters.Add("@Response", SqlDbType.NChar).Value = getSelectedResponse();
                    cmd2.CommandType = CommandType.StoredProcedure;

                    cmd2.ExecuteNonQuery();
                }
            }
            check(questionNo);
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (ViewState["dsQuestions"] != null)
            {
                dsQuestions = (DataSet)ViewState["dsQuestions"];
            }

            if (ViewState["totalQuestion"] != null)
            {
                totalQuestion = Convert.ToInt32(ViewState["totalQuestion"]);
            }

            if (questionNo <= (totalQuestion - 1))
            {
                questionNo++;
            }
            check(questionNo);
            string question = "Question No. : " + questionNo + dsQuestions.Tables[0].Rows[questionNo]["Question"].ToString();
            string choice1 = dsQuestions.Tables[0].Rows[questionNo]["Choice1"].ToString();
            string choice2 = dsQuestions.Tables[0].Rows[questionNo]["Choice2"].ToString();
            string choice3 = dsQuestions.Tables[0].Rows[questionNo]["Choice3"].ToString();
            string choice4 = dsQuestions.Tables[0].Rows[questionNo]["Choice4"].ToString();

            lblQuestion.Text = (question);
            lblChoice1.Text = (choice1);
            lblChoice2.Text = (choice2);
            lblChoice3.Text = (choice3);
            lblChoice4.Text = (choice4);

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd2 = new SqlCommand("InsertResponses", conn))
                {
                    cmd2.Parameters.Add("@UserId", SqlDbType.Int).Value = Session["UserId"];
                    cmd2.Parameters.Add("@QuestionId", SqlDbType.Int).Value = questionNo;
                    cmd2.Parameters.Add("@Response", SqlDbType.NChar).Value = getSelectedResponse();
                    cmd2.CommandType = CommandType.StoredProcedure;

                    cmd2.ExecuteNonQuery();
                }
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            check(questionNo); Response.Redirect("~/ResponseSummary.aspx");
        }

        protected void fetch()
        {
            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("fetchQuestionnaire", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    dsQuestions = new DataSet();
                    da.Fill(dsQuestions);

                    if (dsQuestions != null && dsQuestions.Tables.Count > 0 && dsQuestions.Tables[0].Rows.Count > 0)
                    {
                        totalQuestion = dsQuestions.Tables[0].Rows.Count;

                        ViewState["dsQuestions"] = dsQuestions;
                        ViewState["totalQuestion"] = totalQuestion;
                    }
                }
            }
        }


        public void check(int q)
        {
            if (q <= 0) btnPrevious.Enabled = false;
            else if (q >= totalQuestion - 1) { btnNext.Enabled = false; btnSubmit.Enabled = true; }
            else
            {
                btnPrevious.Enabled = true;
                btnNext.Enabled = true;
            }
        }
    }
}