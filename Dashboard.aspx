<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="SAD.Dashboard" %>



<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management Dashboard</title>
    <style>
       body {
    border-style: groove;
    border-width: 3px;
    font-family: Arial, sans-serif;
    text-align: center;
    background-image: url('Pictures/GrayElegantBanner.png');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Ensures the background covers the entire viewport */
    height: 100vh; /* Full height */
    width: 100vw; /* Full width */
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    justify-content: space-between; /* Ensures content covers full height including footer */
}



        .container {
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            color: #0000FF;
            font-size: 24px;
        }

        h2 {
            color: #333;
            font-size: 20px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 20px;
        }

        .grid-item {
            background: #007bff;
            color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.2s ease-in-out, background 0.3s;
            font-size: 16px;
            font-weight: bold;
        }

            .grid-item:hover {
                transform: scale(1.05);
                background: #0056b3;
            }

        .logout-btn {
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
        }

            .logout-btn:hover {
                background: #cc0000;
            }

        .auto-style1 {
            font-family: Arial;
            font-size: x-large;
            color: #663399;
            font-weight: bold;
        }

        .auto-style2 {
            font-family: "Bahnschrift SemiBold";
            font-size: large;
            font-weight: bold;
        }

        .auto-style3 {
    padding: 1px 4px;
    width: 28%;
    border-collapse: collapse;
    height: 286px;
    border: 3px solid #FFFFFF; /* White border */
    background-color: transparent; /* Fully transparent */
    backdrop-filter: none; /* Remove blur effect */
    z-index: 1;
    left: 122px;
    top: 146px;
    position: absolute;
}


        #form1 {
            height: 470px;
            width: 1146px;
            z-index: 1;
            left: 42px;
            top: 36px;
            position: absolute;
            border-style: groove;
            margin-top: 32px;
            background-color: rgba(255, 255, 255, 0.0); /* Transparent white */
            /*backdrop-filter: blur(10px);*/ /* Optional: Adds a blur effect */
            border: 3px solid rgba(0, 0, 0, 0.2); /* Slightly visible border */
        }

        .auto-style4 {
            width: 364px;
        }

       .auto-style6 {
    width: 28%;
    border-collapse: collapse;
    height: 286px;
    position: absolute;
    top: 146px;
    left: 645px;
    z-index: 1;
    border: 3px solid #FFFFFF; /* White border */
    background-color: transparent; /* Fully transparent */
    backdrop-filter: none; /* Remove blur effect */
}


        .auto-style11 {
            position: absolute;
            top: 104px;
            z-index: 1;
            width: 189px;
            height: 43px;
            left: 187px;
            color: #FFFFFF;
        }

        .auto-style12 {
            font-family: "Bahnschrift SemiBold";
            font-size: large;
            font-weight: bold;
            z-index: 1;
            position: absolute;
            top: 105px;
            left: 712px;
            color: #FFFFFF;
        }

        .auto-style13 {
            border-color: #FFFFFF;
            border-width: 6px;
            left: 42px;
            top: 36px;
            width: 1145px;
        }

        .auto-style14 {
            color: #FFFFFF;
        }

        .auto-style15 {
            border: 3px solid #FFFFFF;
            padding: 1px 4px;
        }
        .auto-style17 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            position: absolute;
            top: 89px;
            left: 62px;
            z-index: 1;
            width: 196px;
        }
        .auto-style18 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            position: absolute;
            top: 158px;
            left: 61px;
            z-index: 1;
        }
        .auto-style19 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            position: absolute;
            top: 224px;
            left: 60px;
            z-index: 1;
        }
        .auto-style20 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            position: absolute;
            top: 218px;
            left: 61px;
            z-index: 1;
        }
        .auto-style21 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            position: absolute;
            top: 153px;
            left: 61px;
            z-index: 1;
        }
        .auto-style22 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            position: absolute;
            top: 91px;
            left: 61px;
            z-index: 1;
        }
        .auto-style23 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            position: absolute;
            top: 19px;
            left: 61px;
        }
        .auto-style24 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: #ff4d4d;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            position: absolute;
            top: 21px;
            left: 61px;
            z-index: 1;
            width: 196px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style13">
        <p class="auto-style1">
            <span class="auto-style14">Student Management System</span><table class="auto-style6">
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="btnViewTeacher0" runat="server" BackColor="#FF9800" BorderColor="#FF9800" CssClass="auto-style17" ForeColor="White" PostBackUrl="~/View_Teacher.aspx" Text="View Teacher Details" Font-Bold="True" />
                        <asp:Button ID="btnViewTeacher" runat="server" BackColor="#FF9800" BorderColor="#FF9800" CssClass="auto-style24" ForeColor="White" PostBackUrl="~/Register_Teacher.aspx" Text="Add Teacher Details" Font-Bold="True" />
                        <asp:Button ID="btnEditTeacher" runat="server" BackColor="#FF9800" BorderColor="#FF9800" CssClass="auto-style19" ForeColor="White" PostBackUrl="~/Search_Teacher.aspx" Text="Search Teacher " Width="196px" Font-Bold="True" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnEditTeacher0" runat="server" BackColor="#FF9800" BorderColor="#FF9800" CssClass="auto-style18" ForeColor="White" PostBackUrl="~/Edit_Teacher.aspx" Text="Edit Teacher Details" Width="196px" Font-Bold="True" />
                    </td>
                </tr>
                </table>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style12" ForeColor="White" Text="Teacher Details"></asp:Label>
        </p>
        <p class="auto-style2">
            <span class="auto-style14">Wellcome to Dashboard</span><asp:Label ID="Label1" runat="server" CssClass="auto-style11" ForeColor="White" Text="Student Details"></asp:Label>
        </p>
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnAddStudent" runat="server" BackColor="#FF9800" BorderColor="#FF9800" CssClass="auto-style23" ForeColor="White" PostBackUrl="~/Register_Student.aspx" Text="Add Student Details" Width="196px" Font-Bold="True" style="z-index: 1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnViewStudent" runat="server" BackColor="#FF9800" BorderColor="#FF9800" CssClass="auto-style22" ForeColor="White" PostBackUrl="~/View_Student.aspx" Text="View Student Details" Width="196px" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnEditStudent" runat="server" BackColor="#FF9800" BorderColor="#FF9800" CssClass="auto-style21" ForeColor="White" PostBackUrl="~/Edit_Student.aspx" Text="Edit Student Details" Width="196px" Font-Bold="True" />
                    <br />
                    <br />
                    <asp:Button ID="btnEditStudent0" runat="server" BackColor="#FF9800" BorderColor="#FF9800" CssClass="auto-style20" ForeColor="White" PostBackUrl="~/Search_Student.aspx" Text="Search Student " Width="196px" Font-Bold="True" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;
        </p>
        <p>
            <asp:Button ID="btnLogout" runat="server" BackColor="#FF9800" BorderColor="#FF9800" ForeColor="White" PostBackUrl="~/Login.aspx" Style="z-index: 1; left: 8px; top: 15px; position: absolute; width: 136px; height: 47px;" Text="Logout"  Font-Bold="True" Font-Overline="False" Font-Strikeout="False" />
        </p>
    </form>
</body>
</html>