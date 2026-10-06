using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Menu_Navigation
{
    public partial class Task_MenuBar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        // MENU
        protected void Menu1_MenuItemClick(
            object sender,
            System.Web.UI.WebControls.MenuEventArgs e)
        {
            if (e.Item.Value == "Electricity Bill")
            {
                pnlElectricity.Visible = true;
                pnlGas.Visible = false;
            }
            else if (e.Item.Value == "Gas Bill")
            {
                pnlElectricity.Visible = false;
                pnlGas.Visible = true;
            }
        }


        // ELECTRICITY CALCULATION
        protected void Calculate_Click(
            object sender,
            EventArgs e)
        {
            double unit;
            double price;

            if (!double.TryParse(Unit.Text, out unit))
            {
                Result.Text = "Enter valid units.";
                return;
            }

            if (!double.TryParse(Price.Text, out price))
            {
                Result.Text = "Enter valid rate.";
                return;
            }


            // Units × Rate
            double bill = unit * price;


            // Fixed service charge
            double serviceCharge;

            if (rbDomestic.Checked)
            {
                serviceCharge = 50;
            }
            else
            {
                serviceCharge = 150;
            }

            bill = bill + serviceCharge;


            // Senior citizen discount
            double discount = 0;

            if (chkSenior.Checked)
            {
                discount = bill * 15 / 100;

                bill = bill - discount;
            }


            // Display result
            Result.Text =
                "Billing Month: " +
                ddlMonth.SelectedValue +

                "<br/>Connection: " +
                (rbDomestic.Checked
                    ? "Domestic"
                    : "Commercial") +

                "<br/>Units Consumed: " +
                unit +

                "<br/>Rate per Unit: ₹" +
                price +

                "<br/>Service Charge: ₹" +
                serviceCharge +

                "<br/>Senior Citizen Discount: ₹" +
                discount.ToString("0.00") +

                "<br/><br/><b>Total Electricity Bill: ₹" +
                bill.ToString("0.00") +
                "</b>";
        }


        // GAS CALCULATION
        protected void Calculate2_Click(
            object sender,
            EventArgs e)
        {
            double gasUnit;
            double gasRate;


            if (!double.TryParse(GasUnit.Text, out gasUnit))
            {
                Result2.Text = "Enter valid gas units.";
                return;
            }


            if (!double.TryParse(GasRate.Text, out gasRate))
            {
                Result2.Text = "Enter valid gas rate.";
                return;
            }


            double bill = gasUnit * gasRate;


            Result2.Text =
                "<b>Total Gas Bill: ₹" +
                bill.ToString("0.00") +
                "</b>";
        }
    }
}
