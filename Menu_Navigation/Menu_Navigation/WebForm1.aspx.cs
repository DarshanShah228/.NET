using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Menu_Navigation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            // Label1.Text = Menu1.SelectedValue;
            if(Menu1.SelectedValue == "Home")
                Label1.Text = "You have selected Home pg";
            else if (Menu1.SelectedValue == "BCA")
                Label1.Text = "You have Enroll in BCA";
            else if (Menu1.SelectedValue == "MCA")
                Label1.Text = "You have Enroll in MCA";
            else if (Menu1.SelectedValue == "Open")
                Label1.Text = "You Have Open the File";
            else if (Menu1.SelectedValue == "Upload")
                Label1.Text = "You Have Open the Upload";
            else if (Menu1.SelectedValue == "Save As")
                Label1.Text = "You Have Open the Save As";
            else if (Menu1.SelectedValue == "About US")
                Label1.Text = "You have selected Aboutus pg";
            else if (Menu1.SelectedValue == "Contact Us")
                Label1.Text = "You have selected Contact Us pg";
            else if (Menu1.SelectedValue == "Help")
                Label1.Text = "You have selected Help pg";
            else
                Label1.Text = "";
        }
    }
}