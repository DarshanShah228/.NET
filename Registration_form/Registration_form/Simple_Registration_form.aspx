<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Simple_Registration_form.aspx.cs" Inherits="Registration_form.Simple_Registration_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- name -->
            <asp:Label ID="lblnm" runat="server" Text="Name : "></asp:Label>
            <asp:TextBox ID="nm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="errnm" runat="server" ErrorMessage="Name Required" ControlToValidate="nm" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ForeColor="Red"></asp:CustomValidator>

            <br /><br />

            <!-- Roll Number-->
            <asp:Label ID="lblrno" runat="server" Text="Roll Number : "></asp:Label>
            <asp:TextBox ID="rno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="errrno" runat="server" ErrorMessage="Roll Number Required" ControlToValidate="rno" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="errrnovalid" runat="server" ErrorMessage="Roll Number is invalid" ControlToValidate="rno" MaximumValue="99999999999999" MinimumValue="1"></asp:RangeValidator>

            <br /><br />

            <!-- Contact No. -->
            <asp:Label ID="lblcontact" runat="server" Text="Contact No : "></asp:Label>
            <asp:TextBox ID="contact" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="errcontact" runat="server" ErrorMessage="Contact Number Required" ControlToValidate="contact" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="errcontactlen" runat="server" ErrorMessage="Number is invalid" ControlToValidate="contact" MaximumValue="9999999999" MinimumValue="1000000000" ForeColor="Red"></asp:RangeValidator>
            <br /><br />

            <!-- Division-->
            Division : <asp:RadioButton ID="a" runat="server" Checked="True" GroupName="div" />A &nbsp&nbsp
                    <asp:RadioButton ID="b" runat="server" GroupName="div" />B &nbsp&nbsp
                    <asp:RadioButton ID="c" runat="server" GroupName="div" />C &nbsp&nbsp
                    <asp:RadioButton ID="d" runat="server" GroupName="div" />D &nbsp&nbsp
                    <asp:RadioButton ID="e1" runat="server" GroupName="div" />E
            <br /><br />


            <!-- Course-->
            Select Course : <asp:DropDownList ID="course1" runat="server">
                                <asp:ListItem value="BCA" Text="BCA" />
                                <asp:ListItem value="BBA" Text="BBA" />
                                <asp:ListItem value="MCA" Text="MCA" />
                                <asp:ListItem value="MBA" Text="MBA" />
                                <asp:ListItem value="MSC" Text="MSC" />
                                
                            </asp:DropDownList>

            <br /><br />

             Mode of Study : <asp:RadioButton ID="online" runat="server" Checked="True" GroupName="mode" />Online &nbsp&nbsp
                        <asp:RadioButton ID="offline" runat="server" GroupName="mode" />Offline &nbsp&nbsp
           
            <br /><br />
            <!--Hobbies-->
            Select Hobbies : <asp:CheckBox ID="Cricket" Text="Cricket" runat="server" />
                            <asp:CheckBox ID="Kabaddi" Text="Kabaddi" runat="server" />
                            <asp:CheckBox ID="Chess" runat="server" Text="Chess" />
                            <asp:CheckBox ID="Reading" runat="server" Text="Reading" />
                            <asp:CheckBox ID="Travel" runat="server" Text="Travel" />

            <br /><br />

            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />

            <asp:Label ID="result" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
