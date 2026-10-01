<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="MasterPage_Hospital.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .registration-container {
            width: 500px;
            margin: 30px auto;
            padding: 30px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.15);
            background-color: white;
        }

        .registration-title {
            text-align: center;
            color: #c62828;
            margin-bottom: 25px;
        }

        .form-row {
            margin-bottom: 18px;
        }

        .form-label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
        }

        .form-input {
            width: 100%;
            padding: 9px;
            box-sizing: border-box;
            border: 1px solid #aaa;
            border-radius: 4px;
        }

        .register-button {
            width: 100%;
            padding: 10px;
            background-color: #c62828;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .register-button:hover {
            background-color: #a91f1f;
        }
    </style>

    <div class="registration-container">

        <h2 class="registration-title">
            Patient Registration
        </h2>

        <!-- Patient ID -->
        <div class="form-row">
            <asp:Label ID="lblPatientID"
                runat="server"
                Text="Patient ID"
                CssClass="form-label">
            </asp:Label>

            <asp:TextBox ID="txtPatientID"
                runat="server"
                CssClass="form-input">
            </asp:TextBox>
        </div>

        <!-- Patient Name -->
        <div class="form-row">
            <asp:Label ID="lblPatientName"
                runat="server"
                Text="Patient Name"
                CssClass="form-label">
            </asp:Label>

            <asp:TextBox ID="txtPatientName"
                runat="server"
                CssClass="form-input">
            </asp:TextBox>
        </div>

        <!-- Age -->
        <div class="form-row">
            <asp:Label ID="lblAge"
                runat="server"
                Text="Age"
                CssClass="form-label">
            </asp:Label>

            <asp:TextBox ID="txtAge"
                runat="server"
                TextMode="Number"
                CssClass="form-input">
            </asp:TextBox>
        </div>

        <!-- Disease / Symptoms -->
        <div class="form-row">
            <asp:Label ID="lblDisease"
                runat="server"
                Text="Disease / Symptoms"
                CssClass="form-label">
            </asp:Label>

            <asp:TextBox ID="txtDisease"
                runat="server"
                TextMode="MultiLine"
                Rows="4"
                CssClass="form-input">
            </asp:TextBox>
        </div>

        <!-- Register Button -->
        <div class="form-row">

            <asp:Button ID="btnRegister"
                runat="server"
                Text="Register Patient"
                CssClass="register-button" OnClick="btnRegister_Click"
                 />

        </div>
    </div>
</asp:Content>
