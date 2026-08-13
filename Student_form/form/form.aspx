<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="form.form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Student Name:<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Do not keep blank"
                ControlToValidate="txtname"
                ForeColor="Red"
                Display="Dynamic"
                ></asp:RequiredFieldValidator>
            <br /><br />
            Enter Enrollment no:<asp:TextBox ID="txten" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Do not keep blank"
                ControlToValidate="txten"
                ForeColor="Red"
                Display="Dynamic"
                ></asp:RequiredFieldValidator>
            <br /><br />
            Enter Student Age:<asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="Enter the age 20 to 60"
                ControlToValidate="txtage"
                MaximumValue="60"
                MinimumValue="17"
                Type="Integer"
                ForeColor="Red"
                ></asp:RangeValidator>
            <br /><br />
            Enter Precentage:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ErrorMessage="Enter percentage between 0 to 100"
                ControlToValidate="txtage"
                MaximumValue="100"
                MinimumValue="0"
                Type="Integer"
                ForeColor="Red"
                ></asp:RangeValidator>
            <br /><br />
            Enter Semester:<asp:TextBox ID="txtsem" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                ErrorMessage="Enter semester between 1 to 8"
                ControlToValidate="txtsem"
                MaximumValue="8"
                MinimumValue="1"
                Type="Integer"
                ForeColor="Red"
                ></asp:RangeValidator>
            <br /><br />
            Enter Subject:<asp:TextBox ID="subj" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator4" runat="server" 
                ErrorMessage="Enter Subject between 1 to 10"
                ControlToValidate="subj"
                MaximumValue="10"
                MinimumValue="1"
                Type="Integer"
                ForeColor="Red"
                ></asp:RangeValidator>
            <br /><br />
            <asp:Button ID="Btn" runat="server" Text="Submit" OnClick="Btn_Click" />
        </div>
    </form>
</body>
</html>
