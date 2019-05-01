<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="Ropey_DVDs.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="w3-teal">
        <h3 class="w3-center" style="width: 944px">
            Alphabetic list of Member with details
        </h3>
        </div>
        <table class="auto-style1" style="width: 109%; height: 44px">
            <tr>
                <td class="auto-style2" style="width: 158px">


                
                    <strong>&nbsp;User</strong>: <strong> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></strong>
               
                <td class="auto-style2" style="width: 603px; text-align: center;">&nbsp;</td>
                <td class="w3-center">
                    <asp:Button ID="btnLogOut" runat="server" Text=" Log Out" OnClick="btnLogOut_Click" style="margin-left: 58" Width="90px" />
                </td>
            </tr>
        </table>
      <br />
        <asp:SqlDataSource ID="ListOfMembers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Member.MemberNumber AS [Member NO], Member.MemberFirstName AS [First Name], Member.MemberLastName AS [Last Name], Member.MemberAddress AS Address, Member.MemberDateOfBirth AS DOB, MembershipCategory.MembershipCategoryDescription AS Caregory, MembershipCategory.MembershipCategoryTotalLoans AS [Max Loan], derivedtbl_1.[Actual Loan] FROM Member INNER JOIN MembershipCategory ON Member.MembershipCategoryNumber = MembershipCategory.MembershipCategoryNumber CROSS JOIN (SELECT TOP (100) PERCENT MemberNumber, COUNT(CopyNumber) AS [Actual Loan] FROM Loan WHERE (DateReturned IS NULL) GROUP BY MemberNumber ORDER BY MemberNumber) AS derivedtbl_1 GROUP BY Member.MemberFirstName, Member.MemberLastName, Member.MemberAddress, Member.MemberDateOfBirth, MembershipCategory.MembershipCategoryDescription, MembershipCategory.MembershipCategoryTotalLoans, derivedtbl_1.[Actual Loan], Member.MemberNumber HAVING (1 = 1) ORDER BY [Member NO]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Member NO" DataSourceID="ListOfMembers">
            <Columns>
                <asp:BoundField DataField="Member NO" HeaderText="Member NO" ReadOnly="True" SortExpression="Member NO" />
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Caregory" HeaderText="Caregory" SortExpression="Caregory" />
                <asp:BoundField DataField="Max Loan" HeaderText="Max Loan" SortExpression="Max Loan" />
                <asp:BoundField DataField="Actual Loan" HeaderText="Actual Loan" ReadOnly="True" SortExpression="Actual Loan" />
            </Columns>
        </asp:GridView>
    </p>

</asp:Content>
