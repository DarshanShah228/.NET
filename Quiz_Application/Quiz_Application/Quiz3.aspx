<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz3.aspx.cs" Inherits="Quiz_Application.Quiz3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="show" runat="server" Text=""></asp:Label>
            <h1>MCQ Test</h1>
            <h3>2 Marks Each.</h3>

            1.Which state of matter has a definite volume but no definite shape?
            <asp:RadioButtonList ID="rtn" runat="server">
                <asp:ListItem>A. Solid</asp:ListItem>
                <asp:ListItem>B. Liquid</asp:ListItem>
                <asp:ListItem>c. Gas</asp:ListItem>
                <asp:ListItem>D. Plasma</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />
            2.In what year did the Berlin Wall fall, marking a major step toward the reunification of Germany?
            <asp:RadioButtonList ID="rtn2" runat="server">
                <asp:ListItem>A. 1987</asp:ListItem>
                <asp:ListItem>B. 1989</asp:ListItem>
                <asp:ListItem>c. 1990</asp:ListItem>
                <asp:ListItem>D. 1975</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />
            3.Which famous river flows directly through the city of Paris?
            <asp:RadioButtonList ID="rtn3" runat="server">
                <asp:ListItem>A. Thames</asp:ListItem>
                <asp:ListItem>B. Rhine</asp:ListItem>
                <asp:ListItem>c. Senie</asp:ListItem>
                <asp:ListItem>D. Danube</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />
            4.Which of the following animals is native exclusively to Australia in the wild?
            <asp:RadioButtonList ID="rtn4" runat="server">
                <asp:ListItem>A. Giant Pandas</asp:ListItem>
                <asp:ListItem>B. Jagur</asp:ListItem>
                <asp:ListItem>c. Kangoo</asp:ListItem>
                <asp:ListItem>D. Moose</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />
            5.Which cell organelle is commonly referred to as the "powerhouse of the cell"?
            <asp:RadioButtonList ID="rtn5" runat="server">
                <asp:ListItem>A. Ribosome</asp:ListItem>
                <asp:ListItem>B. Nucleus</asp:ListItem>
                <asp:ListItem>c. Mitochondria</asp:ListItem>
                <asp:ListItem>D. Lysosome</asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />
            <asp:Button ID="Submit" runat="server" Text="Submit->" OnClick="Submit_Click" />
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
