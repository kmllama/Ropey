<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DVDonLoan11.aspx.cs" Inherits="Ropey_DVDs.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="w3-teal">
               <h3>&nbsp;</h3>
               <h3>DVD Copies Curently on Loan</h3>         
    </div>
   <table class="auto-style1" style="width: 109%; height: 44px">
            <tr>
                <td class="auto-style2" style="width: 186px">


       
               
                    <strong>&nbsp;User</strong>: <strong> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></strong>


       
               
                <td class="auto-style2" style="width: 503px; text-align: center;">&nbsp;</td>
                <td class="w3-center">
                    <asp:Button ID="btnLogOut" runat="server" Text=" Log Out" OnClick="btnLogOut_Click" style="margin-left: 58" Width="90px" />
                </td>
            </tr>
        </table>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="CopyNumber,LoanNumber" ForeColor="Black" GridLines="Vertical" PageSize="5" Height="297px" Width="745px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
                <asp:BoundField DataField="CopyNumber" HeaderText="CopyNumber" SortExpression="CopyNumber" ReadOnly="True" />
                <asp:BoundField DataField="MemberFirstName" HeaderText="MemberFirstName" SortExpression="MemberFirstName" />
                <asp:BoundField DataField="MemberLastName" HeaderText="MemberLastName" SortExpression="MemberLastName" />
                <asp:BoundField DataField="DateOut" HeaderText="DateOut" SortExpression="DateOut" />
                <asp:BoundField DataField="LoanNumber" HeaderText="LoanNumber" InsertVisible="False" ReadOnly="True" SortExpression="LoanNumber" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT DVDTitle.DVDTitle, DVDCopy.CopyNumber, Member.MemberFirstName, Member.MemberLastName, Loan.DateOut, Loan.LoanNumber FROM Loan INNER JOIN DVDCopy ON Loan.CopyNumber = DVDCopy.CopyNumber INNER JOIN Member ON Loan.MemberNumber = Member.MemberNumber INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber ORDER BY Loan.DateOut DESC, DVDTitle.DVDTitle"></asp:SqlDataSource>

        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="359px" Height="417px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="DateOut" HeaderText="Date DVD Out" SortExpression="DateOut" />
                <asp:BoundField DataField="Total Loan" HeaderText="Total Loan" ReadOnly="True" SortExpression="Total Loan" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DateOut, COUNT(LoanNumber) AS [Total Loan] FROM Loan GROUP BY DateOut ORDER BY DateOut DESC"></asp:SqlDataSource>
        <br />
        <br />

   

</asp:Content>
