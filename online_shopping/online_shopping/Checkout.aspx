<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Checkout.aspx.cs"
Inherits="Shopping.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>


<style>
    body {
        font-family: Arial;
        background: #f2f2f2;
    }

    .box {
        width: 700px;
        margin: 50px auto;
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px gray;
    }

    h2 {
        text-align: center;
        color: #0066cc;
    }

    .field {
        margin-bottom: 20px;
    }

    .field label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .txt {
        width: 300px;
        height: 30px;
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .address {
        width: 300px;
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .btn {
        background: green;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    .btn:hover {
        background: #218838;
    }

    .message {
        margin-top: 25px;
        padding: 15px;
        border: 1px solid #ddd;
        background: #f9f9f9;
        line-height: 1.8;
    }
</style>


</head>

<body>

<form id="form1" runat="server">


<div class="box">

    <h2>Checkout</h2>

    <div class="field">
        <label>Customer Name</label>

        <asp:TextBox
            ID="TextBox1"
            runat="server"
            CssClass="txt">
        </asp:TextBox>
    </div>

    <div class="field">
        <label>Mobile Number</label>

        <asp:TextBox
            ID="TextBox2"
            runat="server"
            CssClass="txt"
            TextMode="Phone">
        </asp:TextBox>
    </div>

    <div class="field">
        <label>Address</label>

        <asp:TextBox
            ID="TextBox3"
            runat="server"
            CssClass="address"
            TextMode="MultiLine"
            Height="80">
        </asp:TextBox>
    </div>

    <asp:Button
        ID="Button1"
        runat="server"
        Text="Place Order"
        CssClass="btn"
        OnClick="Button1_Click" />

    <div class="message">

        <asp:Label
            ID="Label1"
            runat="server"
            Font-Size="Large">
        </asp:Label>

    </div>

</div>


</form>

</body>
</html>
