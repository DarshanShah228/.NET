using System;
using System.Web.UI;

namespace Shopping
{
    public partial class Checkout : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


    protected void Button1_Click(object sender, EventArgs e)
        {
            // Check customer details
            if (string.IsNullOrWhiteSpace(TextBox1.Text) ||
                string.IsNullOrWhiteSpace(TextBox2.Text) ||
                string.IsNullOrWhiteSpace(TextBox3.Text))
            {
                Label1.ForeColor = System.Drawing.Color.Red;

                Label1.Text = "Please fill all details.";

                return;
            }

            // Check whether cart contains products
            if (Session["Products"] == null ||
                Session["Total"] == null ||
                string.IsNullOrWhiteSpace(Session["Products"].ToString()))
            {
                Label1.ForeColor = System.Drawing.Color.Red;

                Label1.Text = "Your cart is empty.";

                return;
            }

            Label1.ForeColor = System.Drawing.Color.Green;

            string customerName = Server.HtmlEncode(TextBox1.Text);
            string mobileNumber = Server.HtmlEncode(TextBox2.Text);
            string address = Server.HtmlEncode(TextBox3.Text);

            Label1.Text =
                "<h3>Order Placed Successfully</h3>" +

                "<b>Customer :</b> " +
                customerName +

                "<br/><b>Mobile :</b> " +
                mobileNumber +

                "<br/><b>Address :</b> " +
                address.Replace("\r\n", "<br/>") +

                "<hr/>" +

                "<b>Products :</b><br/>" +

                Session["Products"].ToString() +

                "<hr/>" +

                "<b>Total Amount :</b> ₹" +

                Session["Total"].ToString() +

                "<br/><br/>" +

                "Thank You For Shopping With Us!";
        }
    }


}
