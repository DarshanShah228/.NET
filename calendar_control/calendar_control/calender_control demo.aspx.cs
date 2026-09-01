using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calendar_control
{
    public partial class calender_control_demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "To string" + Calendar1.SelectedDate.ToString() + "<br>";
            Label1.Text += "To ShortDateString" + Calendar1.SelectedDate.ToShortDateString() + "<br>";
            Label1.Text += "To ShortTimeString" + Calendar1.SelectedDate.ToShortTimeString() + "<br>";
            Label1.Text += "To LongDateString" + Calendar1.SelectedDate.ToLongDateString() + "<br>";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime dt1= Calendar1.SelectedDate;
            DateTime dt2= DateTime.Today;
            double days_diff=(dt2 - dt1).TotalDays;
            Label1.Text = "Difference is:" + days_diff +"<br>";
            //it will come in number of month selected
            Label1.Text += "Selected month:" + dt1.Month.ToString() + "<br>";
            //it will come in name of month selected
            Label1.Text += "Selected month name:" + dt1.ToString("MMMM");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DateTime dt= Calendar1.SelectedDate;
            Boolean isleap=DateTime.IsLeapYear(dt.Year);
            if (isleap)
                Label1.Text = "Leap Year";
            else
                Label1.Text = "Not a Leap Year";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DateTime dt= Calendar1.SelectedDate ;
            int days = DateTime.DaysInMonth(dt.Year, dt.Month) ;
            Label1.Text = "Days in Month:" + days;
        }
    }
}