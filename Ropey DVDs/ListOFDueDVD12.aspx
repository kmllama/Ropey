<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListOFDueDVD12.aspx.cs" Inherits="Ropey_DVDs.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="w3-teal">
    <h3> Member List with DVD Dues  </h3>
    </div>
    <table class="auto-style1" style="width: 109%; height: 44px">
            <tr>
                <td class="auto-style2" style="width: 158px">


                
                    <strong>&nbsp;User</strong>: <strong> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></strong>
               
                <td class="auto-style2" style="width: 470px; text-align: center;">&nbsp;</td>
                <td class="w3-center">
                    <asp:Button ID="btnLogOut" runat="server" Text=" Log Out" OnClick="btnLogOut_Click" style="margin-left: 58" Width="90px" />
                </td>
            </tr>
        </table>

    <br />
    <asp:GridView ID="GridView1" runat="server" Height="173px" Width="484px" AutoGenerateColumns="False" DataKeyNames="CopyNumber" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="MemberFirstName" HeaderText="MemberFirstName" SortExpression="MemberFirstName" />
            <asp:BoundField DataField="MemberLastName" HeaderText="MemberLastName" SortExpression="MemberLastName" />
            <asp:BoundField DataField="MemberAddress" HeaderText="MemberAddress" SortExpression="MemberAddress" />
            <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
            <asp:BoundField DataField="CopyNumber" HeaderText="CopyNumber" ReadOnly="True" SortExpression="CopyNumber" />
            <asp:BoundField DataField="DateReturned" HeaderText="DateReturned" SortExpression="DateReturned" />
            <asp:BoundField DataField="DateOut" HeaderText="DateOut" SortExpression="DateOut" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Member.MemberFirstName, Member.MemberLastName, Member.MemberAddress, DVDTitle.DVDTitle, DVDCopy.CopyNumber, Loan.DateReturned, Loan.DateOut FROM Member INNER JOIN Loan ON Member.MemberNumber = Loan.MemberNumber INNER JOIN DVDCopy ON Loan.CopyNumber = DVDCopy.CopyNumber INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber WHERE (Loan.DateOut &gt;= GETDATE() - 31) AND (Loan.DateReturned IS NULL) ORDER BY Loan.DateOut DESC"></asp:SqlDataSource>
    <br />
</asp:Content>
