<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="YourNamespace.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        /* General Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background: url('Pictures/GrayElegantBanner.png') no-repeat center center fixed;
            background-size: cover; /* Ensures full background coverage */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Sign-Up Box - Glassmorphism Effect */
        .signup-box {
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

        /* Real-time Availability Check */
        .availability {
            font-size: 14px;
            color: #28a745; /* Green for available */
            font-weight: bold;
        }

        .not-available {
            font-size: 14px;
            color: #dc3545; /* Red for not available */
            font-weight: bold;
        }

        /* Sign Up Button */
        .btn {
            background: #007bff; /* Same button color as the Login page */
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
                background: #0056b3; /* Darker shade for hover */
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

        /* Error Message */
        .message {
            font-size: 14px;
            color: #d9534f;
            margin-bottom: 10px;
        }

        .auto-style1 {
            color: #FFFFFF;
            font-weight: normal;
        }

        .auto-style2 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-box">
            <h2 class="auto-style1">Sign Up</h2>
            <!-- Error Message -->
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>

            <!-- Full Name -->
            <div class="input-group">
                <asp:TextBox ID="txtName" runat="server" CssClass="input-field" placeholder="Full Name" MaxLength="50"></asp:TextBox>
            </div>

            <!-- Username -->
            <div class="input-group">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" placeholder="Username" MaxLength="30"></asp:TextBox>
            </div>

            <!-- Email -->
            <div class="input-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" placeholder="Email" TextMode="Email"></asp:TextBox>
                <asp:Label ID="lblEmailStatus" runat="server" CssClass="status-label"></asp:Label>
                <!-- Email Status -->
            </div>

            <!-- Phone Number -->
            <div class="input-group">
                <asp:TextBox ID="txtPhone" runat="server" CssClass="input-field" placeholder="Phone Number" MaxLength="15"></asp:TextBox>
            </div>

            <!-- CNIC -->
            <div class="input-group">
                <asp:TextBox ID="txtCNIC" runat="server" CssClass="input-field" placeholder="CNIC (e.g., 42101-1234567-8)" MaxLength="15"></asp:TextBox>
                <asp:Label ID="lblCNICStatus" runat="server" CssClass="status-label"></asp:Label>
            </div>

            <!-- Password -->
            <div class="input-group">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>

            <!-- Sign Up Button -->
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn" OnClick="btnSignUp_Click" BackColor="#FF9800" BorderColor="#FF9800" />

            <!-- Footer with Login link -->
            <div class="footer">
                <p>
                    <span class="auto-style2">Already have an account?</span>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" ForeColor="#FF9800">Login</asp:HyperLink>
                </p>
            </div>
        </div>
        W
    </form>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Email Validation
            $("#<%= txtEmail.ClientID %>").on("input", function () {
            var email = $(this).val();
            if (email.length > 5) { // Check after 5+ characters
                $.ajax({
                    type: "POST",
                    url: "SignUp.aspx/CheckEmailAvailability",
                    data: JSON.stringify({ email: email }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response.d === "Available") {
                            $("#<%= txtEmail.ClientID %>").css("border", "2px solid green");
                            $("#<%= lblEmailStatus.ClientID %>").text("Available ✔").css("color", "green");
                        } else {
                            $("#<%= txtEmail.ClientID %>").css("border", "2px solid red");
                            $("#<%= lblEmailStatus.ClientID %>").text("Already Registered ✖").css("color", "red");
                        }
                    }
                });
            } else {
                $("#<%= txtEmail.ClientID %>").css("border", "1px solid gray");
                $("#<%= lblEmailStatus.ClientID %>").text("");
            }
        });

        // CNIC Validation
        $("#<%= txtCNIC.ClientID %>").on("input", function () {
            var cnic = $(this).val();
            if (cnic.length >= 13) { // Check after full CNIC is entered
                $.ajax({
                    type: "POST",
                    url: "SignUp.aspx/CheckCNICAvailability",
                    data: JSON.stringify({ cnic: cnic }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response.d === "Available") {
                            $("#<%= txtCNIC.ClientID %>").css("border", "2px solid green");
                            $("#<%= lblCNICStatus.ClientID %>").text("Available ✔").css("color", "green");
                        } else {
                            $("#<%= txtCNIC.ClientID %>").css("border", "2px solid red");
                            $("#<%= lblCNICStatus.ClientID %>").text("Already Registered ✖").css("color", "red");
                        }
                    }
                });
            } else {
                $("#<%= txtCNIC.ClientID %>").css("border", "1px solid gray");
                $("#<%= lblCNICStatus.ClientID %>").text("");
            }
        });
    });
    </script>


</body>
</html>
