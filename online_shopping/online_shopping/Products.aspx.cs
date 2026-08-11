
using System;
using System.Web.UI;

namespace Shopping
{
    public partial class Product : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Create cart when the user first opens Product page
                Session["Products"] = "";
                Session["Total"] = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int quantity = Convert.ToInt32(DropDownList1.SelectedValue);

            if (quantity > 0)
            {
                int price = 20000;
                int total = price * quantity;

                Session["Products"] =
                    Session["Products"].ToString()
                    + "Mobile - ₹20,000 x "
                    + quantity
                    + " = ₹"
                    + total
                    + "<br/>";

                Session["Total"] =
                    Convert.ToInt32(Session["Total"]) + total;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int quantity = Convert.ToInt32(DropDownList2.SelectedValue);

            if (quantity > 0)
            {
                int price = 50000;
                int total = price * quantity;

                Session["Products"] =
                    Session["Products"].ToString()
                    + "Laptop - ₹50,000 x "
                    + quantity
                    + " = ₹"
                    + total
                    + "<br/>";

                Session["Total"] =
                    Convert.ToInt32(Session["Total"]) + total;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int quantity = Convert.ToInt32(DropDownList3.SelectedValue);

            if (quantity > 0)
            {
                int price = 2000;
                int total = price * quantity;

                Session["Products"] =
                    Session["Products"].ToString()
                    + "Headphone - ₹2,000 x "
                    + quantity
                    + " = ₹"
                    + total
                    + "<br/>";

                Session["Total"] =
                    Convert.ToInt32(Session["Total"]) + total;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}

