using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_ManagementPortal
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (Menu1.SelectedValue == "Register Employee")
            {
                Response.Redirect("Register Employee.aspx");
            }
            else if (Menu1.SelectedValue == "Employee Profile") 
            {
                Response.Redirect("Employee Profile.aspx");
            }
        }
    }
}