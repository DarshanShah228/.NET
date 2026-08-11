using System;
using System.Web.UI;

namespace Shopping
{
    public partial class Cart : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Products"] != null)
            {
                Label1.Text = Session["Products"].ToString();
            }
            else
            {
                Label1.Text = "Your cart is empty.";
            }

            if (Session["Total"] != null)
            {
                Label2.Text = Session["Total"].ToString();
            }
            else
            {
                Label2.Text = "0";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}