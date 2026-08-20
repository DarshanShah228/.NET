<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Online_Event_Registration.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Online Event Registration</h1>
            <br />
            Name:<asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="name"
                ValidationExpression="[a-zA-Z]+"
                Display="Dynamic"
                ForeColor="Red"
                ErrorMessage="Enter Name"></asp:RegularExpressionValidator>
            <br /><br />
            Mobile no:<asp:TextBox ID="mobile" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="mobile"
                ValidationExpression="^[0-9]{10}$"
                Display="Dynamic"
                ForeColor="Red"
                ErrorMessage="Enter Completed Mobile No"></asp:RegularExpressionValidator>
            <br /><br />
            PinCode:<asp:TextBox ID="pin" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="pin"
                ValidationExpression="^[0-9]{6}$"
                Display="Dynamic"
                ForeColor="Red"
                ErrorMessage="Enter Pincode"></asp:RegularExpressionValidator>
            <br /><br />
            UserName:<asp:TextBox ID="uname" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="uname"
                ValidationExpression="^[A-Za-z0-9_]{5,15}$"
                Display="Dynamic"
                ForeColor="Red"
                ErrorMessage="Enter UserName"></asp:RegularExpressionValidator>
            <br /><br />
            Event Code:<asp:TextBox ID="event" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                ControlToValidate="event"
                ValidationExpression="^[A-Z]{3}[0-9]{4}$"
                Display="Dynamic"
                ForeColor="Red"
                ErrorMessage="Enter Event Code"></asp:RegularExpressionValidator>
            <br /><br />
            Email:<asp:TextBox ID="mail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                ControlToValidate="mail"
                ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"
                Display="Dynamic"
                ForeColor="Red"
                ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
            <br /><br />
            Password:<asp:TextBox ID="pass" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                 ControlToValidate="pass"
                ValidationExpression="^.{8,}$"
                Display="Dynamic"
                ForeColor="Red"
                ErrorMessage="Invalid Password"></asp:RegularExpressionValidator>
            <br /><br />
            <asp:Button ID="btn" runat="server" Text="Submit" />
            <br /><br />
        </div>
    </form>
</body>
</html>
