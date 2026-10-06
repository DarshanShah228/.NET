<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register Employee.aspx.cs" Inherits="Employee_ManagementPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><b>Welcome To Employee Reistration!</b></h2>
    Employee ID:<asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
    <br />
    Employee Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    Department:<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="" Value=""></asp:ListItem>
                    <asp:ListItem Text="IT" Value="IT"></asp:ListItem>
                    <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                    <asp:ListItem Text="Finance" Value="FINANCE"></asp:ListItem>
               </asp:DropDownList>
    <br />
    Basic Salary:<asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Submit" runat="server" Text="Save" OnClick="Submit_Click" />
    <asp:Button ID="View" runat="server" Text="View" OnClick="View_Click" />
    <br /><br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
