using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_Application
{
    public partial class Quiz1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Next_Click(object sender, EventArgs e)
        {
            int cnt = 0;
            int attempt = 0;

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
            // Q6
            if (rtn6.SelectedIndex != -1)
            {
                attempt++;

                if (rtn6.SelectedIndex == 1)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Q7
            if (rtn7.SelectedIndex != -1)
            {
                attempt++;

                if (rtn7.SelectedIndex == 1)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Q8
            if (rtn8.SelectedIndex != -1)
            {
                attempt++;

                if (rtn8.SelectedIndex == 2)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Q9
            if (rtn9.SelectedIndex != -1)
            {
                attempt++;

                if (rtn9.SelectedIndex == 2)
                    cnt += 2;
                else
                    cnt -= 1;
            }
            // Q10
            if (rtn0.SelectedIndex != -1)
            {
                attempt++;

                if (rtn0.SelectedIndex == 2)
                    cnt += 2;
                else
                    cnt -= 1;
            }

            // Store values for next pages
            Session["cnt"] = cnt;
            Session["attempt"] = attempt;


            Response.Redirect("Quiz2.aspx");
        }
    }
}
