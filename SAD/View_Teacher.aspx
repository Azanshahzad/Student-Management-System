<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.Master" AutoEventWireup="true" CodeBehind="View_Teacher.aspx.cs" Inherits="SAD.View_Teacher1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
       body {
    background: url('Pictures/GrayElegantBanner.png');
    background-size: cover; /* Ensures the image covers the entire screen */
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Keeps the background fixed while scrolling */
    width: 100vw; /* Covers full viewport width */
    height: 100vh; /* Covers full viewport height */
    min-width: 100%;
    min-height: 100%;
    overflow: auto; /* Allows scrolling */
    font-family: Arial, sans-serif;
    color: white;
    margin: 0;
    padding: 0;
}

.auto-style1 {
    text-align: center;
    padding: 20px;
}

.grid-container {
    background-color: transparent; /* Ensures text does not block the background */
    padding: 20px;
    border-radius: 10px;
}

.auto-style1 {
    background-color: transparent !important; /* Keep text background clear */
    color: white;
    font-weight: bold;
}

input[type=submit] {
    background-color: transparent !important; 
    border-color: white;
    color: white;
}

        .auto-style2 {
            font-family: Arial;
            font-size: x-large;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <br />
          <br />
          <span class="auto-style2">Registered Teachers</span><br />
          <br />
          <asp:GridView ID="gvViewTeacher" runat="server" AllowCustomPaging="True" AllowPaging="True" AutoGenerateColumns="False" CaptionAlign="Top" CellPadding="4" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" ShowFooter="True" ShowHeaderWhenEmpty="True" GridLines="None">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" InsertVisible="False" ReadOnly="True" SortExpression="TeacherID" />
                  <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                  <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                  <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                  <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                  <asp:BoundField DataField="CNIC" HeaderText="CNIC" SortExpression="CNIC" />
                  <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                  <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                  <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                  <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                  <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                  <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                  <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" SortExpression="Qualifications" />
                  <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                  <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
              </Columns>
              <EditRowStyle BorderStyle="Ridge" BackColor="#999999" />
              <EmptyDataRowStyle BorderStyle="Ridge" Font-Bold="True" ForeColor="White" />
              <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BorderColor="White" BorderStyle="Ridge" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#5D7B9D" />
              <PagerStyle ForeColor="White" BackColor="#284775" HorizontalAlign="Center" />
              <RowStyle BorderStyle="Ridge" ForeColor="#333333" BackColor="#F7F6F3" />
              <SelectedRowStyle BorderStyle="Ridge" Font-Bold="True" ForeColor="#333333" BackColor="#E2DED6" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
      
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserDBConnection %>" SelectCommand="SELECT * FROM [Teachers]"></asp:SqlDataSource>
 
</asp:Content>
