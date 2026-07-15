<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login_Page_Demo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial, Helvetica, sans-serif;
        }

        body{
            background:#f0f2f5;
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
        }

        .login-box{
            width:350px;
            background:white;
            padding:30px;
            border-radius:10px;
            box-shadow:0 5px 15px rgba(0,0,0,0.2);
        }

        h1{
            text-align:center;
            color:#333;
            margin-bottom:25px;
        }

        .label{
            display:block;
            margin-bottom:5px;
            font-weight:bold;
            color:#555;
        }

        .textbox{
            width:100%;
            padding:10px;
            margin-bottom:18px;
            border:1px solid #ccc;
            border-radius:5px;
            font-size:15px;
        }

        .textbox:focus{
            border-color:#0078D7;
            outline:none;
        }

        .btn{
            width:100%;
            padding:10px;
            background:#0078D7;
            color:white;
            border:none;
            border-radius:5px;
            font-size:16px;
            cursor:pointer;
        }

        .btn:hover{
            background:#005fa3;
        }

        .result{
            margin-top:20px;
            text-align:center;
            color:green;
            font-weight:bold;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h1>Login</h1>
            <asp:Label ID="Luser" runat="server" CssClass="label" Text="Username"></asp:Label>
            <asp:TextBox ID="Tuser" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Username is required" ControlToValidate="Tuser" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

            <asp:Label ID="Lpassword" runat="server" CssClass="label" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password is required" ControlToValidate="password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

            <asp:Button ID="Btn" runat="server" Text="Login" CssClass="btn" OnClick="Btn_Click" />

            <div class="result">
                Welcome,
                <asp:Label ID="Ldisplay" runat="server"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
