using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_form
{
    public partial class Simple_Registration_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            int rollno = int.Parse(rno.Text);
            string snm = nm.Text;
            long contactno = long.Parse(contact.Text);
            string div = "", mode = "", hobby = "";
            string course = course1.SelectedValue;

            if (a.Checked) div = "A";
            else if (b.Checked) div = "B";
            else if (c.Checked) div = "C";
            else if (d.Checked) div = "D";
            else if (e1.Checked) div = "E";

            if (online.Checked) mode = "Online";
            else if (offline.Checked) mode = "Offline";


            if (Cricket.Checked) hobby += "Cricket, ";
            if (Kabaddi.Checked) hobby += "Kabaddi, ";
            if (Chess.Checked) hobby += "Chess, ";
            if (Reading.Checked) hobby += "Reading, ";
            if (Travel.Checked) hobby += "Travel, ";


            result.Text = "<h3><br><br>Roll No : " + rollno + "<br> Name is : " + snm + "<br>"
                        + "contact No : " + contactno + "<br>"
                        + "Division : " + div + "<br>"
                        + "Course : " + course + "<br>"
                        + "Hobbies : " + hobby + "<br>"
                        + "Mode of Study : " + mode + "<h3>";
        }
    }
}