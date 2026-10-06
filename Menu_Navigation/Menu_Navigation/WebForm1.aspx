<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Menu_Navigation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                <asp:MenuItem Text="Home" value="Home"></asp:MenuItem>
                <asp:MenuItem Text="Course" value="Course">
                    <asp:MenuItem Text="BCA" value="BCA"></asp:MenuItem>
                    <asp:MenuItem Text="MCA" value="MCA"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="File" value="File">
                    <asp:MenuItem Text="Open" value="Open"></asp:MenuItem>
                    <asp:MenuItem Text="Upload" value="Upload"></asp:MenuItem>
                    <asp:MenuItem Text="Save AS" value="Save As"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="About Us" value="About US"></asp:MenuItem>
                <asp:MenuItem Text="Conatct Us" value="Contact Us"></asp:MenuItem>
                <asp:MenuItem Text="Help" value="Help"></asp:MenuItem>
                </Items>
            </asp:Menu>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
