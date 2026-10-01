using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage_Hospital
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Display data entered in Form 1
                lblPatientID.Text = Session["PatientID"]?.ToString();
                lblPatientName.Text = Session["PatientName"]?.ToString();
                lblAge.Text = Session["Age"]?.ToString();
                lblDisease.Text = Session["Disease"]?.ToString();
            }
        }

        protected void btnNewPatient_Click(object sender, EventArgs e)
        {
            // Go back to Form 1
            Response.Redirect("PatientRegistration.aspx");
        }
    }
}