using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace form
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = (string)Session["Name"];
            string enroll = (string)Session["enroll"];
            string age = (string)Session["age"];
            string precentage = (string)Session["precentage"];
            string sem = (string)Session["sem"];
            string sub = (string)Session["sub"];

            Label1.Text = "Name: " + name + "<br />" +
              "Enrollment: " + enroll + "<br />" +
              "Age: " + age + "<br />" +
              "Percentage: " + precentage + "<br />" +
              "Semester: " + sem + "<br />" +
              "Subject: " + sub;
        }
    }
}