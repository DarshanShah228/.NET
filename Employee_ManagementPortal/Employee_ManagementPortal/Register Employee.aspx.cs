using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_ManagementPortal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            int EmpId = int.Parse(txtEmpId.Text);
            string EmpName = txtName.Text;
            string EmpDep = DropDownList1.Text;
            int EmpSalary=int.Parse(txtSalary.Text);

            Session["Id"] = EmpId;
            Session["Name"] = EmpName;
            Session["Dep"]=EmpDep;
            Session["Salary"]= EmpSalary;

            Label1.Text = "Information Save!!";
        }

        protected void View_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee Profile.aspx");
        }
    }
}