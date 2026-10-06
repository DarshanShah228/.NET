<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Task_MenuBar.aspx.cs"
    Inherits="Menu_Navigation.Task_MenuBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Electricity and Gas Bill</title>
</head>

<body>

<form id="form1" runat="server">
    <h2>Electricity & Gas Bill Calculator</h2>

    <!-- MENU -->
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
        <Items>
            <asp:MenuItem Text="Electricity Bill" Value="Electricity Bill"></asp:MenuItem>
            <asp:MenuItem Text="Gas Bill" Value="Gas Bill"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <br /><br />

    <!-- ELECTRICITY PANEL -->

    <asp:Panel ID="pnlElectricity" runat="server" Visible="false">
        <h3>Electricity Bill</h3>
        Number of Units Consumed:<asp:TextBox ID="Unit" runat="server"></asp:TextBox>
        <br /><br />

        Rate per Unit:<asp:TextBox ID="Price" runat="server"></asp:TextBox>
        <br /><br />

        Connection:<asp:RadioButton ID="rbDomestic" runat="server" Text="Domestic" GroupName="Connection" Checked="true"></asp:RadioButton>
        &nbsp;&nbsp;

        <asp:RadioButton ID="rbCommercial" runat="server" Text="Commercial" GroupName="Connection" />
        <br /><br />

        Billing Month:<asp:DropDownList ID="ddlMonth" runat="server">
            <asp:ListItem Text="Jan" Value="Jan"> </asp:ListItem>
            <asp:ListItem Text="Feb" Value="Feb"> </asp:ListItem>
            <asp:ListItem Text="Mar" Value="Mar"> </asp:ListItem>
            <asp:ListItem Text="Apr" Value="Apr"> </asp:ListItem>
        </asp:DropDownList>
        <br /><br />

        <asp:CheckBox ID="chkSenior" runat="server" Text="Apply senior citizen discount (15%)"> </asp:CheckBox>
        <br /><br />

        <asp:Button ID="Calculate" runat="server" Text="Calculate" OnClick="Calculate_Click"> </asp:Button>
        <br /><br />
        <asp:Label ID="Result" runat="server"> </asp:Label>
    </asp:Panel>
    <br /><br />

    <!-- GAS PANEL -->

    <asp:Panel ID="pnlGas" runat="server" Visible="false">
        <h3>Gas Bill</h3>

        Gas Units Consumed: <asp:TextBox ID="GasUnit" runat="server"></asp:TextBox>
        <br /><br />


        Gas Rate per Unit: <asp:TextBox ID="GasRate" runat="server"></asp:TextBox>
        <br /><br />

        <asp:Button ID="Calculate2" runat="server" Text="Calculate" OnClick="Calculate2_Click"></asp:Button>
        <br /><br />

        <asp:Label ID="Result2" runat="server"> </asp:Label>
    </asp:Panel>
</form>

</body>
</html>
