<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Form.aspx.cs" Inherits="Registration_Form_Custome_Validation.Registration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <h1 align="center">Online Event Registration</h1>
            <table align="center">
                <tr>
                    <td>Enrollment No : </td>
                    <td><asp:TextBox ID="enroll" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="nmval" runat="server" ErrorMessage="Enroll Not proper!" OnServerValidate="nmval_ServerValidate" ControlToValidate="enroll"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Pin : </td>
                    <td><asp:TextBox ID="pin" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="pinval" runat="server" ErrorMessage="Pin not in proper formate" ControlToValidate="pin" OnServerValidate="pinval_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Semester : </td>
                    <td><asp:TextBox ID="sem" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="semval" runat="server" ErrorMessage="Sem  must 1,3,5,7" OnServerValidate="semval_ServerValidate" ControlToValidate="sem"></asp:CustomValidator>
                       
                    </td>
                </tr>
                <tr>
                    <td>Mobile Number : </td>
                    <td><asp:TextBox ID="mob" runat="server"></asp:TextBox>
                       <asp:CustomValidator ID="mobval" runat="server" ErrorMessage="Mobile Number" OnServerValidate="mobval_ServerValidate" ControlToValidate="mob"></asp:CustomValidator>
                    </td>
                </tr>
                 <tr>
                    <td>Username: </td>
                    <td><asp:TextBox ID="unm" runat="server"></asp:TextBox>
                       <asp:CustomValidator ID="unmval" runat="server" ErrorMessage="Username must " OnServerValidate="unmval_ServerValidate" ControlToValidate="unm"></asp:CustomValidator>
                    </td>
                </tr>
                 <tr>
                    <td>Total Person : </td>
                    <td><asp:TextBox ID="totper" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="noval" runat="server" ErrorMessage="No of person must" OnServerValidate="noval_ServerValidate" ControlToValidate="totper"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button ID="btnsbm" runat="server" Text="Registration" /></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
