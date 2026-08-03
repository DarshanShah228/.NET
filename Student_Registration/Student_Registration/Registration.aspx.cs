using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Registration
{
    public partial class Registration : System.Web.UI.Page
    {
        static String[] name = new string[5];
        static int[] rollno = new int[5];
        static String[] department = new string[5];
        static String[] sub = new string[5];
        static String[] batch = new string[5];

        static int cnt = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClickSubmit_Click(object sender, EventArgs e)
        {
            string nm = snm.Text;
            int ro = int.Parse(rnm.Text);
            string dp = dept.SelectedValue;
            string sub1 = subject.SelectedValue;
            string bt = "";

            if (b1.Checked)
                bt = "B1";
            if (b2.Checked)
                bt = "B2";
            if (b3.Checked)
                bt = "B3";

            name[cnt] = nm;
            rollno[cnt]= ro;
            department[cnt] = dp;
            sub[cnt] = sub1;
            batch[cnt] = bt;
            cnt++;
            //for disable the button after 5 data inserted
            if(cnt==5)
                ClickSubmit.Enabled = false;
        }

        protected void ClickShow_Click(object sender, EventArgs e)
        {
            result.Text = "";
            for (int i = 0; i < cnt; i++)
            {
                result.Text += "<br>Roll No : " + rollno[i] + "<br>Name : " + name[i] +
                    "<br>Department : " + department[i] + "<br>Subject : " + sub[i] +
                    "<br>Lab Batch : " + batch[i] + "<br><hr>";
            }
        }
    }
}