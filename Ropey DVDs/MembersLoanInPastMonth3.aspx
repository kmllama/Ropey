<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MembersLoanInPastMonth3.aspx.cs" Inherits="Ropey_DVDs.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div class="w3-teal">
        <h3 class="w3-center" style="width: 944px">
            Check Member's Loan History of Past Month
        </h3>
        </div>
        <table class="auto-style1" style="width: 109%; height: 44px">
            <tr>
                <td class="auto-style2" style="width: 158px">


                
        <asp:DropDownList ID="MemberLastNameList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MemberLastName" DataValueField="MemberLastName" Height="61px" Width="129px">
        </asp:DropDownList>
               
                <td class="auto-style2" style="width: 603px; text-align: center;"><strong>&nbsp;User</strong>: <strong> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></strong></td>
                <td class="w3-center">
                    <asp:Button ID="btnLogOut" runat="server" Text=" Log Out" OnClick="btnLogOut_Click" style="margin-left: 58" Width="90px" />
                </td>
            </tr>
        </table>


                
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MemberLastName] FROM [Member] ORDER BY [MemberLastName]"></asp:SqlDataSource>
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MemberNumber,LoanNumber,CopyNumber" DataSourceID="DataSourceToCheckLoanPastMonth" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="214px" Width="956px">
            <Columns>
                <asp:BoundField DataField="MemberNumber" HeaderText="MemberNumber" ReadOnly="True" SortExpression="MemberNumber" />
                <asp:BoundField DataField="MemberLastName" HeaderText="MemberLastName" SortExpression="MemberLastName" />
                <asp:BoundField DataField="MemberFirstName" HeaderText="MemberFirstName" SortExpression="MemberFirstName" />
                <asp:BoundField DataField="LoanNumber" HeaderText="LoanNumber" InsertVisible="False" ReadOnly="True" SortExpression="LoanNumber" />
                <asp:BoundField DataField="DVDTitle" HeaderText="DVDTitle" SortExpression="DVDTitle" />
                <asp:BoundField DataField="DateOut" HeaderText="DateOut" SortExpression="DateOut" />
                <asp:BoundField DataField="CopyNumber" HeaderText="CopyNumber" ReadOnly="True" SortExpression="CopyNumber" />
                
                <asp:BoundField DataField="DVDNumber" HeaderText="DVDNumber" SortExpression="DVDNumber" />
                
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
        <br />
        <asp:SqlDataSource ID="DataSourceToCheckLoanPastMonth" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Member.MemberNumber, Member.MemberLastName, Member.MemberFirstName, Loan.LoanNumber, DVDTitle.DVDTitle, Loan.DateOut, DVDCopy.CopyNumber, DVDCopy.DVDNumber FROM Member INNER JOIN Loan ON Member.MemberNumber = Loan.MemberNumber INNER JOIN DVDCopy ON Loan.CopyNumber = DVDCopy.CopyNumber INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber WHERE (Loan.DateOut &gt;= DATEADD(Day, DATEDIFF(Day, 0, GETDATE()) - 31, 0)) AND (Member.MemberLastName = @Param3)">
            <SelectParameters>
                <asp:ControlParameter ControlID="MemberLastNameList" Name="Param3" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="lblCont" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Loan.DateOut) AS Loan FROM Loan INNER JOIN Member ON Loan.MemberNumber = Member.MemberNumber WHERE (Loan.MemberNumber = @Param2) AND (Loan.DateOut &gt;= DATEADD(Day, DATEDIFF(Day, 0, GETDATE()) - 31, 0)) GROUP BY Member.MemberLastName">
            <SelectParameters>
                <asp:ControlParameter ControlID="MemberLastNameList" Name="Param2" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
        <br />
        <br />
    
      

</asp:Content>
