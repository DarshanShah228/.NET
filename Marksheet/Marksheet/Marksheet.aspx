<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marksheet.aspx.cs" Inherits="Marksheet.Marksheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblenroll" runat="server" Text="Enter Enroll No : "></asp:Label>
            <asp:TextBox ID="enroll" TextMode="Number" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblroll" runat="server" Text="Enter Roll No : "></asp:Label>
            <asp:TextBox ID="roll" TextMode="Number" runat="server"></asp:TextBox><br /><br />


            <asp:Label ID="lblnm" runat="server" Text="Enter Name : "></asp:Label>
            <asp:TextBox ID="nm"  runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblcnt" runat="server" Text="Enter Contact No : "></asp:Label>
            <asp:TextBox ID="contact" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblm1" runat="server" Text="Enter Mark-1 : "></asp:Label>
            <asp:TextBox ID="m1" TextMode="Number" runat="server"></asp:TextBox>
             <br /><br />

            <asp:Label ID="lblm2" runat="server" Text="Enter Mark-2 : "></asp:Label>
            <asp:TextBox ID="m2" TextMode="Number" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblm3" runat="server" Text="Enter Mark-3 : "></asp:Label>
            <asp:TextBox ID="m3" TextMode="Number" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblm4" runat="server" Text="Enter Mark-4 : "></asp:Label>
            <asp:TextBox ID="m4" TextMode="Number" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblm5" runat="server" Text="Enter Mark-5 : "></asp:Label>
            <asp:TextBox ID="m5" TextMode="Number" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="clicksbm" runat="server" Text="Calculate" OnClick="clicksbm_Click" /><br /><br />

            <asp:Label ID="result" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
