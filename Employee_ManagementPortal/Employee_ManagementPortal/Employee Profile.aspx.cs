using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_ManagementPortal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Session["ID"].ToString());
            string Name=Session["Name"].ToString();
            string Dep = Session["Dep"].ToString();
            int Salary = int.Parse(Session["Salary"].ToString());

            Label1.Text = "Employee ID:" + id + "<br>Employee Name:" + Name + "<br> Employee Dept:" +Dep + "<br>Employee Salary:" + Salary;
        }
    }
}