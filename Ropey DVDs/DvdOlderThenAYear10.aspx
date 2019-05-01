<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DvdOlderThenAYear10.aspx.cs" Inherits="Ropey_DVDs.DvdOlderThenAYear10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3-teal">
               <h3> DVD Copies Older Than 365 Days.</h3>
    </div>
     <table class="auto-style1" style="width: 100%; height: 45px">
            <tr>
                <td class="auto-style2" style="width: 239px">


                
                    <strong>&nbsp;User</strong>: <strong> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></strong>
               
                <td class="auto-style2" style="width: 763px; text-align: center;">&nbsp;</td>
                <td class="w3-center">
                    <asp:Button ID="btnLogOut" runat="server" Text=" Log Out" OnClick="btnLogOut_Click" style="margin-left: 58" Width="90px" />
                </td>
            </tr>
        </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="CopyNumber" DataSourceID="SqlDataSource1" ForeColor="Black" Height="487px" Width="822px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="DVDTitle" HeaderText="DVD Title" SortExpression="DVDTitle" />
            <asp:BoundField DataField="DVDNumber" HeaderText="DVD Number" SortExpression="DVDNumber" />
            <asp:BoundField DataField="CopyNumber" HeaderText="Copy Number" ReadOnly="True" SortExpression="CopyNumber" />
            <asp:BoundField DataField="DatePurchased" HeaderText="Date Purchased" SortExpression="DatePurchased" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT DVDTitle.DVDTitle, DVDCopy.DVDNumber, DVDCopy.CopyNumber, DVDCopy.DatePurchased FROM DVDCopy INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber INNER JOIN Loan ON DVDCopy.CopyNumber = Loan.CopyNumber WHERE (DVDCopy.DatePurchased &lt;= DATEADD(Day, DATEDIFF(Day, 0, GETDATE()) - 365, 0))"></asp:SqlDataSource>
</asp:Content>
