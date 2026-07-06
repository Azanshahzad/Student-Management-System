<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.Master" AutoEventWireup="true" CodeBehind="UpdateTeacher.aspx.cs" Inherits="SAD.UpdateTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style type="text/css">
    body {
        background: url('Pictures/GrayElegantBanner.png') no-repeat center center fixed;
        background-size: cover;
        font-family: Arial, sans-serif;
        color: #fff;
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
        width: 80%;
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
        <h2>Update Teacher</h2>
        <table>
            <tr>
                <td>Teacher ID</td>
                <td colspan="3">
                    <asp:TextBox ID="txtTeacherID" runat="server" CssClass="textbox-large" placeholder="Enter Teacher ID"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>First Name</td>
                <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                <td>Last Name</td>
                <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                <td>Phone Number</td>
                <td><asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox></td>
            </tr>
            <tr>
                <td>CNIC</td>
                <td><asp:TextBox ID="txtCNIC" runat="server"></asp:TextBox></td>
                <td>Age</td>
                <td><asp:TextBox ID="txtAge" runat="server" TextMode="Date"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <div class="radio-group">
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </td>
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
            </tr>
            <tr>
                <td>City</td>
                <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                <td>Address</td>
                <td><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Postal Code</td>
                <td><asp:TextBox ID="txtPostalCode" runat="server" TextMode="Number"></asp:TextBox></td>
                <td>Qualifications</td>
                <td><asp:TextBox ID="txtQualifications" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Experience</td>
                <td><asp:TextBox ID="txtExperience" runat="server"></asp:TextBox></td>
                <td>Department</td>
                <td>
                    <asp:DropDownList ID="ddlDepartment" runat="server">
                        <asp:ListItem Value="">Select Department</asp:ListItem>
                        <asp:ListItem>Software Engineering</asp:ListItem>
                        <asp:ListItem>Information Security</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>

        <div class="btn-container">
            <asp:Button ID="btnUpdate" runat="server" CssClass="btn" Text="Update"  />
            <asp:Button ID="btnReset" runat="server" CssClass="btn" Text="Reset" CausesValidation="False"  />
        </div>
    </div>
</asp:Content>
