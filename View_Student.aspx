<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="View_Student.aspx.cs" Inherits="SAD.View_Student1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
      body {
/*    background: url('Pictures/GrayElegantBanner.png');*/
    background-size: cover; /* Ensures the background covers the entire screen */
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Keeps the background fixed while scrolling */
    min-height: 100vh; /* Ensures the background covers the full viewport height */
    width: 100vw; /* Covers full viewport width */
    overflow: auto; /* Allows scrolling but keeps the background */
    font-family: Arial, sans-serif;
    color: white;
    margin: 0;
    padding: 0;
}

.grid-container {
    background-color: transparent; /* Ensures text does not block the background */
    padding: 20px;
    border-radius: 10px;
}

asp:GridView, .auto-style2, .auto-style3 {
    background-color: transparent !important; /* Keep text background clear */
    color: white;
    font-weight: bold;
}

asp:Button {
    background-color: transparent !important; 
    border-color: white;
    color: white;
}

        .auto-style4 {
            background-color: transparent; /* Keep text background clear */;
            color: white;
            text-align: center;
            font-weight: bold;
            font-family: Arial;
            font-size: x-large;
        }
        .auto-style5 {
            font-size: medium;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <br />
                <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registered Students</span><br />
            <br />

            <div class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" AllowCustomPaging="True" AllowPaging="True" CaptionAlign="Top" CellPadding="4" ForeColor="#333333" HorizontalAlign="Center" ShowFooter="True" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" ClientIDMode="AutoID" EnablePersistedSelection="True" EnableSortingAndPagingCallbacks="True" PageSize="8" RowHeaderColumn="7" Width="726px" CssClass="auto-style5" Font-Bold="True" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" GridLines="None">
                    <AlternatingRowStyle ForeColor="#284775" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                        <asp:BoundField DataField="GuardianName" HeaderText="GuardianName" SortExpression="GuardianName" />
                        <asp:BoundField DataField="GuardianPhone" HeaderText="GuardianPhone" SortExpression="GuardianPhone" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="PreviousCollege" HeaderText="PreviousCollege" SortExpression="PreviousCollege" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#999999" />
                    <EmptyDataRowStyle ForeColor="White" HorizontalAlign="Left" VerticalAlign="Middle" />
                    <FooterStyle BorderColor="White" BorderStyle="Ridge" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#5D7B9D" ForeColor="White" />
                    <HeaderStyle Font-Bold="True" Font-Size="Large" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="White" BorderStyle="Ridge" BackColor="#5D7B9D" />
                    <PagerSettings LastPageImageUrl="~/Pictures/GrayElegantBanner.png" NextPageImageUrl="~/Pictures/GrayElegantBanner.png" />
                    <PagerStyle BorderStyle="Ridge" ForeColor="White" BackColor="#284775" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="White" BorderStyle="Ridge" BackColor="#F7F6F3" />
                    <SelectedRowStyle BorderColor="White" BorderStyle="Ridge" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#E2DED6" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </div>

    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserDBConnection %>" ProviderName="<%$ ConnectionStrings:UserDBConnection.ProviderName %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
</form>
</asp:Content>

