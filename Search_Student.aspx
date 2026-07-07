<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Search_Student.aspx.cs" Inherits="SAD.Search_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        /* General Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background: url('Pictures/GrayElegantBanner.png') no-repeat center center fixed;
            background-size: cover;
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        /* Navbar Styling */
        .navbar {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            margin: 0 15px;
            font-size: 18px;
            transition: 0.3s;
        }

        .navbar a:hover {
            color: #ff9800;
        }

        /* Title */
        .title {
            font-size: 32px;
            font-weight: bold;
            text-transform: uppercase;
            margin: 30px 0;
        }

        /* Glassmorphism Container */
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

        /* Input Fields */
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

        /* Search Button */
        .search-button {
            background: linear-gradient(135deg, #ff9800, #e67e22);
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

        .search-button:hover {
            background: linear-gradient(135deg, #e67e22, #d35400);
            transform: scale(1.05);
        }

        /* Footer Styling */
        .footer {
            margin-top: 40px;
            padding: 15px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            text-align: center;
            font-size: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p class="auto-style12"></p>
 
   <p class="title">SEARCH STUDENT</p>

  <div class="glass-container">
      <table style="width: 100%">
          <tr>
              <td>Enter RollNo:</td>
              <td>
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-large" placeholder="Enter Student Roll No"></asp:TextBox>
              </td>
          </tr>
        
      </table>
      <br>
      <asp:Button ID="Button1" runat="server" CssClass="search-button" Text="Search" onClick="Button7_Click1" />
  </div>

  <br>

 


 <asp:GridView ID="GridView1" runat="server" ShowFooter="True" CssClass="gridview-style" BorderColor="Black" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
     <EditRowStyle BackColor="#999999" BorderColor="Black" />
     <EmptyDataRowStyle ForeColor="White" BorderColor="Black" />
     <FooterStyle BackColor="#5D7B9D" ForeColor="White" BorderColor="Black" Font-Bold="True" />
     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderColor="Black" />
     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" BorderColor="Black" />
     <RowStyle ForeColor="#333333" BackColor="#F7F6F3" BorderColor="Black" />
     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
     <SortedAscendingCellStyle BackColor="#E9E7E2" />
     <SortedAscendingHeaderStyle BackColor="#506C8C" />
     <SortedDescendingCellStyle BackColor="#FFFDF8" />
     <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
 </asp:GridView>
</asp:Content>
