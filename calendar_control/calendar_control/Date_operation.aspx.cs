using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calendar_control
{
    public partial class Date_operation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int index = Date_oper.SelectedIndex;
            DateTime dt = Calendar1.SelectedDate;
            if (index == 0)
            {
                int x = int.Parse(no.Text);
                dt = dt.AddDays(x);
                Label1.Text = dt.ToString("dd/MM/yyyy");
            }
            else if (index == 1) {
                int x = int.Parse(no.Text);
                dt = dt.AddDays(-x);
                Label1.Text = dt.ToString("dd/MM/yyyy");
            }
            else if (index == 2)
            {
                int x = int.Parse(no.Text);
                dt = dt.AddMonths(x);
                Label1.Text = dt.ToString("dd/MM/yyyy");
            }
            else if (index == 3)
            {
                int x = int.Parse(no.Text);
                dt = dt.AddYears(x);
                Label1.Text = dt.ToString("dd/MM/yyyy");
            }
            else if (index == 4)
            {
                int x = int.Parse(no.Text);
                dt = dt.AddHours(x);
                Label1.Text = dt.ToString();
            }
            else if (index == 5)
            {
                int x = int.Parse(no.Text);
                dt = dt.AddMinutes(x);
                Label1.Text = dt.ToString();
            }
            else
            {
                Label1.Text = "Select one option";
            }
        }
    }
}