<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="DeleteStd.aspx.cs" Inherits="SAD.DeleteStd" %>
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

        .textbox-large {
            width: 80%;
            height: 25px;
            font-size: 16px;
            border-radius: 8px;
            border: none;
            padding: 10px;
            outline: none;
            text-align: center;
            background: rgba(255, 255, 255, 0.6);
            color: #333;
        }

        .delete-button {
            background: linear-gradient(135deg, #ff4c4c, #c0392b);
            border: none;
            width: 100%;
            padding: 12px 40px;
            color: white;
            font-size: 18px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        .delete-button:hover {
            background: linear-gradient(135deg, #c0392b, #a93226);
            transform: scale(1.05);
        }

        .error-message {
            color: red;
            font-weight: bold;
            margin-top: 10px;
        }

        .success-message {
            color: lightgreen;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p class="title">DELETE STUDENT</p>

    <div class="glass-container">
        <table style="width: 100%">
            <tr>
                <td>Enter Student ID:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-large" placeholder="Enter Student ID"></asp:TextBox>
                   
                </td>
            </tr>
        </table>
        <br>
        <asp:Button ID="Button1" runat="server" CssClass="delete-button" Text="Delete" 
            OnClientClick="return confirm('Are you sure you want to delete this student?');" 
            OnClick="Button1_Click" />
        <br><br>
        <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
    </div>
</asp:Content>
