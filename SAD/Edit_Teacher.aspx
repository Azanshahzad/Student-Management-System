<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.Master" AutoEventWireup="true" CodeBehind="Edit_Teacher.aspx.cs" Inherits="SAD.Edit_Teacher1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        body {
            font-family: 'Poppins', sans-serif;
            background: url('Pictures/GrayElegantBanner.png') no-repeat center center fixed;
            background-size: cover;
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .title {
            font-size: 32px;
            font-weight: bold;
            text-transform: uppercase;
            margin: 30px 0;
        }

        .glass-container {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            border-radius: 15px;
            padding: 30px;
            width: 50%;
            max-width: 600px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
            margin: auto;
        }

        .action-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button {
            width: 45%;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            border: none;
        }

        .delete-button {
            background: linear-gradient(135deg, #ff4c4c, #c0392b);
            color: white;
        }

        .delete-button:hover {
            background: linear-gradient(135deg, #c0392b, #a93226);
            transform: scale(1.05);
        }

        .update-button {
            background: linear-gradient(135deg, #4caf50, #2e7d32);
            color: white;
        }

        .update-button:hover {
            background: linear-gradient(135deg, #2e7d32, #1b5e20);
            transform: scale(1.05);
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <p class="title">EDIT TEACHER</p>

   <div class="glass-container">
       <p style="font-size: 20px;">Modify teacher details as needed.</p>
       
       <div class="action-buttons">
           <asp:Button ID="Button10" runat="server" CssClass="button delete-button" Text="Delete Teacher" OnClick="Button10_Click" />
           <asp:Button ID="Button11" runat="server" CssClass="button update-button" Text="Update Teacher" OnClick="Button11_Click" />
       </div>
   </div>

</asp:Content>
