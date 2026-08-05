<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Quiz_Application.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblAttempt" runat="server"></asp:Label>
            <br /><br />
            <asp:Label ID="lblScore" runat="server"></asp:Label>
            <br /><br />
            <asp:Button ID="btnRestart" 
                runat="server" 
                Text="Restart Quiz" OnClick="btnRestart_Click"  />
        </div>
    </form>
</body>
</html>
