<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Date_operation.aspx.cs" Inherits="calendar_control.Date_operation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <br /><br />
            <asp:RadioButtonList ID="Date_oper" runat="server">
                <asp:ListItem>Add Days </asp:ListItem>
                <asp:ListItem>Subtract Days </asp:ListItem>
                <asp:ListItem>Add Month </asp:ListItem>
                <asp:ListItem>Add Year </asp:ListItem>
                <asp:ListItem>Add Hours </asp:ListItem>
                <asp:ListItem>Add Minutes </asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />
            Enter the no you want:<asp:TextBox ID="no" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Display" OnClick="Button1_Click" />
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
