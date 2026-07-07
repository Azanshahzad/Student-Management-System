<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="UpdateStd.aspx.cs" Inherits="SAD.UpdateStd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('Pictures/GrayElegantBanner.png') no-repeat center center fixed;
            background-size: cover;
            color: white;
        }
        .form-container {
            max-width: 900px;
            background: rgba(0, 0, 0, 0.85);
            padding: 30px;
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
            padding: 12px;
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
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-container">
    <h2>Update Student</h2>
    <table>
        <tr>
            <td>Roll No:</td>
            <td>
                <asp:TextBox ID="txtRollno" runat="server" Height="35px"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:Button ID="btnSearch" runat="server" CssClass="btn" Text="Search" OnClick="btnSearch_Click" />
            </td>
        </tr>
    </table>
    <hr />
    <table>
        <tr>
            <td>First Name</td>
            <td><asp:TextBox ID="txtFirstName" runat="server" Height="35px"></asp:TextBox></td>
            <td>Last Name</td>
            <td><asp:TextBox ID="txtLastName" runat="server" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Height="35px"></asp:TextBox></td>
            <td>Phone Number</td>
            <td><asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>DOB</td>
            <td><asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Height="35px"></asp:TextBox></td>
            <td>Gender</td>
            <td>
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Province</td>
            <td>
                <asp:DropDownList ID="ddlProvince" runat="server">
                    <asp:ListItem Value="">Select Province</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Sindh</asp:ListItem>
                    <asp:ListItem>KPK</asp:ListItem>
                    <asp:ListItem>Balochistan</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>City</td>
            <td><asp:TextBox ID="txtCity" runat="server" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td>Postal Code</td>
            <td><asp:TextBox ID="txtPostalCode" runat="server" TextMode="Number" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Guardian Name</td>
            <td><asp:TextBox ID="txtGuardianName" runat="server" Height="35px"></asp:TextBox></td>
            <td>Guardian Phone</td>
            <td><asp:TextBox ID="txtGuardianPhone" runat="server" TextMode="Phone" Height="35px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Select Department</td>
            <td>
                <asp:DropDownList ID="ddlDepartment" runat="server" Height="35px">
                    <asp:ListItem Value="">Select Department</asp:ListItem>
                    <asp:ListItem>Software Engineering</asp:ListItem>
                    <asp:ListItem>Information Security</asp:ListItem>
                    <asp:ListItem>Computer Science</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>Previous College</td>
            <td><asp:TextBox ID="txtPreviousCollege" runat="server" Height="35px"></asp:TextBox></td>
        </tr>
    </table>
    <div class="btn-container" style="text-align:center; margin-top:20px;">
        <asp:Button ID="btnUpdate" runat="server" CssClass="btn" Text="Update" OnClick="btnUpdate_Click" />
    </div>
</div>
</asp:Content>
