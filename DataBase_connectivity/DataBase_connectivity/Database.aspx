<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Database_Connectivity_MySQL.aspx.cs" Inherits="Dtabase_Connectivity.Database_Connectivity_MySQL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="StudentGrid" runat="server"></asp:GridView>
            <br />

            <asp:Label ID="result" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
