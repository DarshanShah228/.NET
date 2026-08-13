using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace form
{
    public partial class form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtname.Text;
            Session["enroll"] = txten.Text;
            Session ["age"]=txtage.Text;
            Session ["precentage"]=TextBox1.Text;
            Session ["sem"]= txtsem.Text;
            Session ["sub"] = subj.Text;

            Response.Redirect("Result.aspx");
        }
    }
}