<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="MasterPage_Hospital.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .details-container {
            width: 500px;
            margin: 30px auto;
            padding: 30px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.15);
            background-color: white;
        }

        .details-title {
            text-align: center;
            color: #c62828;
            margin-bottom: 25px;
        }

        .detail-row {
            display: flex;
            margin-bottom: 18px;
            padding: 10px;
            border-bottom: 1px solid #eee;
        }

        .detail-label {
            width: 180px;
            font-weight: bold;
            color: #444;
        }

        .detail-value {
            flex: 1;
            color: #222;
        }

        .back-button {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background-color: #c62828;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #a91f1f;
        }
    </style>

    <div class="details-container">

        <h2 class="details-title">
            Patient Details
        </h2>

        <!-- Patient ID -->
        <div class="detail-row">
            <asp:Label ID="lblPatientIDTitle"
                runat="server"
                Text="Patient ID:"
                CssClass="detail-label">
            </asp:Label>

            <asp:Label ID="lblPatientID"
                runat="server"
                CssClass="detail-value">
            </asp:Label>
        </div>

        <!-- Patient Name -->
        <div class="detail-row">
            <asp:Label ID="lblPatientNameTitle"
                runat="server"
                Text="Patient Name:"
                CssClass="detail-label">
            </asp:Label>

            <asp:Label ID="lblPatientName"
                runat="server"
                CssClass="detail-value">
            </asp:Label>
        </div>

        <!-- Age -->
        <div class="detail-row">
            <asp:Label ID="lblAgeTitle"
                runat="server"
                Text="Age:"
                CssClass="detail-label">
            </asp:Label>

            <asp:Label ID="lblAge"
                runat="server"
                CssClass="detail-value">
            </asp:Label>
        </div>

        <!-- Disease / Symptoms -->
        <div class="detail-row">
            <asp:Label ID="lblDiseaseTitle"
                runat="server"
                Text="Disease / Symptoms:"
                CssClass="detail-label">
            </asp:Label>

            <asp:Label ID="lblDisease"
                runat="server"
                CssClass="detail-value">
            </asp:Label>
        </div>

        <!-- Back Button -->
        <asp:Button ID="btnNewPatient"
            runat="server"
            Text="Register New Patient"
            CssClass="back-button" OnClick="btnNewPatient_Click"
             />

    </div>
</asp:Content>
