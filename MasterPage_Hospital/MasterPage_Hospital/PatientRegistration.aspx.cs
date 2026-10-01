using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage_Hospital
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Session["PatientID"] = txtPatientID.Text;
            Session["PatientName"] = txtPatientName.Text;
            Session["Age"] = txtAge.Text;
            Session["Disease"] = txtDisease.Text;

            Response.Redirect("Display.aspx");
        }
    }
}