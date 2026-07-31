using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marksheet
{
    public partial class Marksheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void clicksbm_Click(object sender, EventArgs e)
        {
            int total = int.Parse(m1.Text) + int.Parse(m2.Text) + int.Parse(m3.Text) + int.Parse(m4.Text) + int.Parse(m5.Text);

            float per = total / 5;

            if ((enroll.Text == "") | (roll.Text == "") | (nm.Text == "") | (contact.Text == "") | (m1.Text == "") | (m2.Text == "") | (m3.Text == "") | (m4.Text == "") | (m5.Text == ""))
            {
                result.Text = "Please fill the all filed";
                return;
            }
            if (((int.Parse(m1.Text) < 0) | (int.Parse(m1.Text) > 100)) | ((int.Parse(m2.Text) < 0) | (int.Parse(m2.Text) > 100)) | ((int.Parse(m3.Text) < 0) | (int.Parse(m3.Text) > 100)) | ((int.Parse(m4.Text) < 0) | (int.Parse(m4.Text) > 100)) | ((int.Parse(m5.Text) < 0) | (int.Parse(m5.Text) > 100)))
            {
                result.Text = "Please Enter Valid Marks(0-100)";
                return;
            }
            result.Text = "Enroll Number : " + enroll.Text + "<br>Roll No : " + roll.Text +
                "<br>Name : " + nm.Text + "<br>Contact No : " + contact.Text +
                "<br>Mark-1 : " + m1.Text + "<br>Mark-2 : " + m2.Text +
                "<br>Mark-3 : " + m4.Text + "<br>Mark-4 : " + m4.Text +
                "<br>Mark-5 : " + m5.Text + "<br>Total Marks : " + total +
                "<br>Percentage : " + per + "%";
        }
    }
}