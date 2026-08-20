<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Custom_Validation.aspx.cs" Inherits="Online_Event_Registration.Custom_Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            UserName:<asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="umane" runat="server"
                ForeColor="Red" 
                ControlToValidate="name"
                ErrorMessage="Inalid Username" OnServerValidate="umane_ServerValidate"></asp:CustomValidator>
            <br /><br />
            Password:<asp:TextBox ID="pass" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="password" runat="server" 
                ControlToValidate="pass"
                ForeColor="Red"
                ErrorMessage="Invalid Password" OnServerValidate="password_ServerValidate"></asp:CustomValidator>
            <br /><br />
            <asp:Button ID="btn" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
