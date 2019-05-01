<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewCopyLoanByDVDnumber5.aspx.cs" Inherits="Ropey_DVDs.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="w3-teal w3-animate-fading">
    <h3> Find Last Loan DVD by DVD ID</h3>  
    </div>
    <table class="auto-style1" style="width: 109%; height: 44px">
            <tr>
                <td class="auto-style2" style="width: 158px">


                
        <asp:DropDownList ID="DDCopyList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CopyNumber" DataValueField="CopyNumber" Height="30px" Width="90px">
        </asp:DropDownList>
                       
                <td class="auto-style2" style="width: 513px; text-align: center;"><strong>&nbsp;User</strong>: <strong> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></strong></td>
                <td class="w3-center">
                    <asp:Button ID="btnLogOut" runat="server" Text=" Log Out" OnClick="btnLogOut_Click" style="margin-left: 58" Width="90px" />
                </td>
            </tr>
        </table>


        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MemberNumber" DataSourceID="SqlDataSForCheckDVDloan" PageSize="20" Width="800px">
            <Columns>
                <asp:BoundField DataField="CopyNumber" HeaderText="Copy Number" SortExpression="CopyNumber" />
                <asp:BoundField DataField="MemberNumber" HeaderText="Member Number" ReadOnly="True" SortExpression="MemberNumber" />
                <asp:BoundField DataField="Member Name" HeaderText="Member Name" SortExpression="Member Name" ReadOnly="True" />
                <asp:BoundField DataField="DateOut" HeaderText="Date Out" SortExpression="DateOut" />
                <asp:BoundField DataField="DateDue" HeaderText="Date Due" SortExpression="DateDue" />
                <asp:BoundField DataField="DVDTitle" HeaderText="DVD Title" SortExpression="DVDTitle" />
                <asp:BoundField DataField="LoanDuration" HeaderText="Loan Duration" SortExpression="LoanDuration" />
                <asp:BoundField DataField="DateReturned" HeaderText="Date Returned" SortExpression="DateReturned" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CopyNumber] FROM [DVDCopy]"></asp:SqlDataSource>



        <asp:SqlDataSource ID="SqlDataSForCheckDVDloan" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Loan.CopyNumber, Member.MemberNumber, Member.MemberFirstName + '  ' + Member.MemberLastName AS [Member Name], Loan.DateOut, Loan.DateDue, DVDTitle.DVDTitle, LoanType.LoanDuration, Loan.DateReturned FROM DVDCopy INNER JOIN DVDTitle ON DVDCopy.DVDNumber = DVDTitle.DVDNumber INNER JOIN Loan ON DVDCopy.CopyNumber = Loan.CopyNumber INNER JOIN LoanType ON Loan.LoanTypeNumber = LoanType.LoanTypeNumber INNER JOIN Member ON Loan.MemberNumber = Member.MemberNumber WHERE (Loan.CopyNumber = @Param2) ORDER BY Loan.DateOut DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDCopyList" Name="Param2" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>



    

</asp:Content>
