using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_Application
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int score = Convert.ToInt32(Session["cnt"]);
                int attempt = Convert.ToInt32(Session["attempt"]);


                lblAttempt.Text = "Total Questions Attempted : " + attempt;

                lblScore.Text = "Final Score : " + score;
            }
        }

        protected void btnRestart_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Response.Redirect("Quiz1.aspx");
        }
    }
}