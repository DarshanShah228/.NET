using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Event_Registration
{
    public partial class Custom_Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void umane_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(args.Value.ToLower()=="admin")
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void password_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string pass = args.Value;
            Boolean ucase = false;
            Boolean lcase = false;
            Boolean scase = false;
            Boolean digit = false;
            foreach(char c in pass)
            {
                if (char.IsUpper(c))
                    ucase = true;
                else if (char.IsLower(c))
                    lcase = true;
                else if(char.IsDigit(c))
                    digit= true;
                else
                    scase = true;
            }
            if(ucase  && lcase && digit && scase)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}