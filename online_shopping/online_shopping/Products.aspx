
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Product.aspx.cs"
    Inherits="Shopping.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>

    <style>
        body {
            font-family: Arial;
            background: #f2f2f2;
        }

        .container {
            width: 1000px;
            margin: 30px auto;
        }

        h1 {
            text-align: center;
        }

        .products {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .product {
            background: white;
            width: 250px;
            padding: 20px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .product img {
            width: 180px;
            height: 180px;
            object-fit: contain;
        }

        .product h2 {
            margin: 10px 0;
        }

        .price {
            font-size: 20px;
            font-weight: bold;
            color: #333;
            margin: 10px;
        }

        .quantity {
            margin: 15px;
        }

        .btn {
            padding: 10px 20px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background: #0056b3;
        }

        .cart-btn {
            display: block;
            margin: 30px auto;
            padding: 12px 25px;
            background: green;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="container">

        <h1>Our Products</h1>

        <div class="products">

            <!-- MOBILE -->
            <div class="product">

                <asp:Image ID="Image1"
                    runat="server"
                    ImageUrl="data:image/jpeg;base64,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" />

                <h2>Mobile</h2>

                <div class="price">
                    Price : ₹20,000
                </div>

                <div class="quantity">
                    Quantity:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">0</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <asp:Button ID="Button1"
                    runat="server"
                    Text="Add To Cart"
                    CssClass="btn"
                    OnClick="Button1_Click" />

            </div>


            <!-- LAPTOP -->
            <div class="product">

                <asp:Image ID="Image2"
                    runat="server"
                    ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS672pOty4e33Cj8CkCnfcCUawLFBqG_Cyskg&s" />

                <h2>Laptop</h2>

                <div class="price">
                    Price : ₹50,000
                </div>

                <div class="quantity">
                    Quantity:
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="0">0</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <asp:Button ID="Button2"
                    runat="server"
                    Text="Add To Cart"
                    CssClass="btn"
                    OnClick="Button2_Click" />

            </div>


            <!-- HEADPHONE -->
            <div class="product">

                <asp:Image ID="Image3"
                    runat="server"
                    ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb1FB4vgQI7WpJ8D8LzXZGVxtdevPeESsQG-rAt-LnUg&s" />

                <h2>Headphone</h2>

                <div class="price">
                    Price : ₹2,000
                </div>

                <div class="quantity">
                    Quantity:
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Value="0">0</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <asp:Button ID="Button3"
                    runat="server"
                    Text="Add To Cart"
                    CssClass="btn"
                    OnClick="Button3_Click" />

            </div>

        </div>

        <asp:Button ID="Button4"
            runat="server"
            Text="Go To Cart"
            CssClass="cart-btn"
            OnClick="Button4_Click" />

    </div>

</form>

</body>
</html>

