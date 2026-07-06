<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Register_Student.aspx.cs" Inherits="SAD.Register_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
    body {
        font-family: Arial, sans-serif;
        background: url('Pictures/GrayElegantBanner.png') no-repeat center center fixed;
        background-size: cover;
        color: #fff;
        margin: 0;
        padding: 0;
    }

    .form-container {
        max-width: 850px;
        background: rgba(0, 0, 0, 0.85);
        padding: 45px;
        border-radius: 10px;
        margin: 30px auto;
        box-shadow: 0px 0px 15px rgba(255, 152, 0, 0.5);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #FF9800;
        font-size: 26px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    td {
        padding: 12px 15px;
        font-size: 18px;
        vertical-align: middle;
    }

    input, select, textarea {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #FF9800;
        background: rgba(255, 255, 255, 0.1);
        color: white;
        transition: all 0.3s ease-in-out;
    }

    input:focus, select:focus, textarea:focus {
        outline: none;
        border-color: #e68900;
        box-shadow: 0px 0px 8px rgba(255, 152, 0, 0.7);
    }

    select {
        appearance: none;
        cursor: pointer;
    }

    select option {
        background: black;
        color: white;
    }

    .radio-group {
        display: flex;
        gap: 15px;
    }

    .radio-group input {
        width: auto;
        margin-right: 5px;
    }

    .btn-container {
        text-align: center;
        margin-top: 25px;
    }

    .btn {
        background-color: #FF9800;
        border: none;
        padding: 12px 35px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        border-radius: 5px;
        cursor: pointer;
        width: 48%;
        transition: 0.3s;
    }

    .btn:hover {
        background-color: #e68900;
        box-shadow: 0px 0px 10px rgba(255, 152, 0, 0.7);
    }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-container">
    <h2>Student Registration</h2>
    <table>
        <tr>
            <td>First Name</td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="35px"></asp:TextBox></td>
            <td>Last Name</td>
            <td><asp:TextBox ID="TextBox2" runat="server" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Height="35px"></asp:TextBox></td>
            <td>Phone Number</td>
            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Phone" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>DOB</td>
            <td><asp:TextBox ID="TextBox5" runat="server" TextMode="Date" Height="35px"></asp:TextBox></td>
            <td>Gender</td>
            <td>
                <div class="radio-group">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </td>
        </tr>
        <tr>
            <td>Province</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">Select Province</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Sindh</asp:ListItem>
                    <asp:ListItem>KPK</asp:ListItem>
                    <asp:ListItem>Balochistan</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>City</td>
            <td><asp:TextBox ID="TextBox7" runat="server" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td>Postal Code</td>
            <td><asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Guardian Name</td>
            <td><asp:TextBox ID="TextBox13" runat="server" Height="35px"></asp:TextBox></td>
            <td>Guardian Phone</td>
            <td><asp:TextBox ID="TextBox9" runat="server" TextMode="Phone" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Select Department</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="35px">
                    <asp:ListItem Value="0">Select Department</asp:ListItem>
                    <asp:ListItem>Software Engineering</asp:ListItem>
                    <asp:ListItem>Information Security</asp:ListItem>
                    <asp:ListItem>Computer Science</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>Previous College</td>
            <td><asp:TextBox ID="TextBox10" runat="server" Height="35px"></asp:TextBox></td>
        </tr>
    </table>

    <div class="btn-container">
        <asp:Button ID="Button7" runat="server" CssClass="btn" Text="Register" OnClick="Button7_Click" />
        <asp:Button ID="Button8" runat="server" CssClass="btn" Text="Reset" CausesValidation="False" OnClick="Button8_Click" />
    </div>
</div>
</asp:Content>
