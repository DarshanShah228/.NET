using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simple_calculator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            if (Tno1.Text == "" || Tno2.Text == "")
            {
                Label1.Text = "Enter Number Plz";
            }
            else
            {
                int a=int.Parse(Tno1.Text);
                int b = int.Parse(Tno2.Text);
                int c = a + b;
                Label1.Text = "Answer" + "<br/>" + c.ToString();
            }
        }

        protected void BtnSub_Click(object sender, EventArgs e)
        {
            if (Tno1.Text == "" || Tno2.Text == "")
            {
                Label1.Text = "Enter Number Plz";
            }
            else
            {
                int a = int.Parse(Tno1.Text);
                int b = int.Parse(Tno2.Text);
                int c = a - b;
                Label1.Text = "Answer" + "<br/>" + c.ToString();
            }
        }

        protected void BtnMulti_Click(object sender, EventArgs e)
        {
            if (Tno1.Text == "" || Tno2.Text == "")
            {
                Label1.Text = "Enter Number Plz";
            }
            else
            {
                int a = int.Parse(Tno1.Text);
                int b = int.Parse(Tno2.Text);
                int c = a * b;
                Label1.Text = "Answer" + "<br/>" + c.ToString();
            }
        }

        protected void BtnDiv_Click(object sender, EventArgs e)
        {
            if (Tno1.Text == "" || Tno2.Text == "")
            {
                Label1.Text = "Enter Number Plz";
            }
            else
            {
                int a = int.Parse(Tno1.Text);
                int b = int.Parse(Tno2.Text);
                int c = a / b;
                Label1.Text = "Answer" + "<br/>" + c.ToString();
            }
        }
    }
}