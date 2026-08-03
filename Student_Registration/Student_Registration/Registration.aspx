<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Student_Registration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Roll No : <asp:TextBox ID="rnm" runat="server" TextMode="Number"></asp:TextBox><br /><br />
            Name : <asp:TextBox ID="snm" runat="server"></asp:TextBox><br /><br />
            Department : <asp:DropDownList ID="dept" runat="server">
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
            </asp:DropDownList><br /><br />
            Subject : <asp:DropDownList ID="subject" runat="server">
                <asp:ListItem>No-Code</asp:ListItem>
                <asp:ListItem>Laravel</asp:ListItem>
                <asp:ListItem>IOT</asp:ListItem>
            </asp:DropDownList><br /><br />
            Lab Batch : <asp:RadioButton ID="b1" runat="server" GroupName="batch" Checked="True" />B1
                        <asp:RadioButton ID="b2" runat="server" GroupName="batch" />B2
                        <asp:RadioButton ID="b3" runat="server" GroupName="batch" />B3
            <br /><br />

            <asp:Button ID="ClickSubmit" runat="server" Text="Submit" OnClick="ClickSubmit_Click" />

            <br /><br />
            <asp:Button ID="ClickShow" runat="server" Text="Show Student Data" OnClick="ClickShow_Click" />
            <br /><br />
            <asp:Label ID="result" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
