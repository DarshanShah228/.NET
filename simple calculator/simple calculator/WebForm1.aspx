<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="simple_calculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Simple Calculator</h1>
            <asp:Label ID="Lno1" runat="server" Text="Enter No1:"></asp:Label>
            <asp:TextBox ID="Tno1" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="Lno2" runat="server" Text="Enter No2:"></asp:Label>
            <asp:TextBox ID="Tno2" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" />
            <asp:Button ID="BtnSub" runat="server" Text="Sub" OnClick="BtnSub_Click" />
            <asp:Button ID="BtnMulti" runat="server" Text="Multi" OnClick="BtnMulti_Click" />
            <asp:Button ID="BtnDiv" runat="server" Text="Div" OnClick="BtnDiv_Click" />
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
