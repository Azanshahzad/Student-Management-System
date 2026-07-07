<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YourNamespace.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet"/>

    <style>

        /* General Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background: url('Pictures/GrayElegantBanner.png') no-repeat center center fixed;
            background-size: cover; /* Ensures the image covers the entire screen */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Login Box - Glassmorphism Effect */
        .login-box {
            position: relative;
            background: rgba(255, 255, 255, 0.2); /* Transparent White Background */
            backdrop-filter: blur(10px); /* Glass Effect */
            padding: 30px;
            border-radius: 15px;
            width: 400px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }


        /* Header */
        h2 {
            font-size: 26px;
            margin-bottom: 20px;
            font-weight: 600;
            color: #333;
            text-transform: uppercase;
        }

        /* Input Groups */
        .input-group {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
        }

        .input-field {
            width: 85%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            background: rgba(255, 255, 255, 0.6);
            color: #333;
            outline: none;
            text-align: center;
        }

            .input-field::placeholder {
                color: #666;
            }

        .btn {
            background: #007bff;
            color: white;
            width: 85%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

            .btn:hover {
                background: #0056b3;
            }

        /* Footer */
        .footer {
            margin-top: 15px;
            font-size: 14px;
        }

            .footer a {
                color: #0056b3;
                text-decoration: none;
                font-weight: bold;
            }

                .footer a:hover {
                    text-decoration: underline;
                }

        /* Message Label */
        .message {
            font-size: 14px;
            color: #d9534f;
            margin-bottom: 10px;
        }
        .auto-style1 {
            color: #FFFFFF;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-weight: normal;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h2 class="auto-style4">Login</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="auto-style3" style="color: #FFFFFF"></asp:Label>
            <div class="input-group">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" placeholder="Username"></asp:TextBox>
            </div>
            <div class="input-group">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" BackColor="#FF9800" BorderColor="#FF9800" />
            <div class="footer">
                <p>
                    <span class="auto-style1">Don't have an account?</span> 
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx" ForeColor="#FF9800">Sign Up</asp:HyperLink>
                </p>

            </div>
        </div>
    </form>
</body>
</html>
