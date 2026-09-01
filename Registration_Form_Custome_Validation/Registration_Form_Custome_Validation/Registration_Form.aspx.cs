using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_Form_Custome_Validation
{
    public partial class Registration_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void nmval_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string enroll = args.Value.ToLower();

            if(enroll.StartsWith("lj"))
                args.IsValid= true;
            else
                args.IsValid = false;
        }

        protected void semval_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string sem = args.Value.ToLower();

            if (sem.StartsWith("1") || sem.StartsWith("3") || sem.StartsWith("5")  || sem.StartsWith("7"))
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void pinval_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string pin = args.Value.ToLower();

            if(pin.Length==6)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void mobval_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string pin = args.Value.ToLower();

            if (pin.Length == 10 && (pin.StartsWith("6") || pin.StartsWith("7") || pin.StartsWith("8") || pin.StartsWith("9")))
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void unmval_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string unm = args.Value.ToLower();

            if (unm.StartsWith("mca") && unm.Length>=6 && char.IsDigit(unm[unm.Length-1]))
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void noval_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string noper = args.Value.ToLower();

            if (noper.Length>0 && noper.Length<=2 && int.Parse(noper)/4==0)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}