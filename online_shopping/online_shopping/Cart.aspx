<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Cart.aspx.cs"
    Inherits="Shopping.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>

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

        .products {
            border: 1px solid #ddd;
            padding: 15px;
            margin: 20px 0;
            font-size: 17px;
            line-height: 2;
        }

        .total {
            text-align: right;
            font-size: 20px;
            font-weight: bold;
            color: red;
            margin: 20px 0;
        }

        .btn {
            background: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background: #218838;
        }

        .continue {
            background: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-left: 10px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="box">

        <h2>Shopping Cart</h2>

        <div class="products">

            <asp:Label ID="Label1"
                runat="server"
                Font-Size="Large">
            </asp:Label>

        </div>

        <div class="total">

            Total Amount : ₹

            <asp:Label ID="Label2"
                runat="server"
                Font-Bold="true"
                ForeColor="Red">
            </asp:Label>

        </div>

        <div style="text-align:center;">

            <asp:Button
                ID="Button1"
                runat="server"
                CssClass="btn"
                Text="Proceed To Checkout"
                OnClick="Button1_Click" />

            <asp:Button
                ID="Button2"
                runat="server"
                CssClass="continue"
                Text="Continue Shopping"
                PostBackUrl="~/Product.aspx" />

        </div>

    </div>

</form>

</body>
</html>