using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_Application
{
    public partial class Quiz3 : System.Web.UI.Page
    {
        int cnt;
        int attempt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get previous score and attempt count
                cnt = Convert.ToInt32(Session["cnt"]);
                attempt = Convert.ToInt32(Session["attempt"]);

                show.Text = cnt.ToString();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            // Get previous values
            cnt = Convert.ToInt32(Session["cnt"]);
            attempt = Convert.ToInt32(Session["attempt"]);

            // Q1
            if (rtn.SelectedIndex != -1)
            {
                attempt++;

                if (rtn.SelectedIndex == 1)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Q2
            if (rtn2.SelectedIndex != -1)
            {
                attempt++;

                if (rtn2.SelectedIndex == 1)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Q3
            if (rtn3.SelectedIndex != -1)
            {
                attempt++;

                if (rtn3.SelectedIndex == 2)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Q4
            if (rtn4.SelectedIndex != -1)
            {
                attempt++;

                if (rtn4.SelectedIndex == 2)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Q5
            if (rtn5.SelectedIndex != -1)
            {
                attempt++;

                if (rtn5.SelectedIndex == 2)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Save final values
            Session["cnt"] = cnt;
            Session["attempt"] = attempt;


            // Go to result page
            Response.Redirect("Result.aspx");

        }
    }
}