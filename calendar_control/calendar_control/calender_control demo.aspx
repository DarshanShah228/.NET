<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calender_control demo.aspx.cs" Inherits="calendar_control.calender_control_demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="Date Different" OnClick="Button2_Click" />
            <br /><br />
            <asp:Button ID="Button3" runat="server" Text="Leap Year" OnClick="Button3_Click" />
            <br /><br />
            <asp:Button ID="Button4" runat="server" Text="Days in Month" OnClick="Button4_Click"/>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
