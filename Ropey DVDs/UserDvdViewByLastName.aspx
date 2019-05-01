<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserDvdViewByLastName.aspx.cs" Inherits="Ropey_DVDs.UserDvdViewByLastName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> <h1> Find DVD using User Last Name</h1></div>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="900px" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="379px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ActorSurname" HeaderText="Actor S.Name" />
            <asp:BoundField DataField="DVDNumber" HeaderText="DVD No." />
            <asp:BoundField DataField="ActorNumber" HeaderText="Actor No." />
            <asp:BoundField DataField="DVDTitle" HeaderText="DVD Title" />
            <asp:BoundField DataField="CategoryNumber" HeaderText="Cat. No." />
            <asp:BoundField DataField="DateReleased" HeaderText="Released Date" />
            <asp:BoundField DataField="StandardCharge" HeaderText="Stander Charge" />
            <asp:BoundField DataField="PenaltyCharge" HeaderText="Penalty Charge" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Actor.ActorSurname, DVDTitle.DVDTitle, DVDTitle.CategoryNumber, DVDTitle.DateReleased, DVDTitle.StandardCharge, DVDTitle.PenaltyCharge, CastMember.DVDNumber AS Expr1 FROM Actor INNER JOIN CastMember ON Actor.ActorNumber = CastMember.ActorNumber INNER JOIN DVDTitle ON CastMember.DVDNumber = DVDTitle.DVDNumber"></asp:SqlDataSource>
    <asp:SqlDataSource ID="Sd1grid" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Actor.ActorSurname, CastMember.DVDNumber, DVDTitle.DVDTitle, DVDTitle.CategoryNumber, DVDTitle.StudioNumber, DVDTitle.ProducerNumber, DVDTitle.DateReleased, DVDTitle.StandardCharge, DVDTitle.PenaltyCharge FROM Actor INNER JOIN CastMember ON Actor.ActorNumber = CastMember.ActorNumber INNER JOIN DVDTitle ON CastMember.DVDNumber = DVDTitle.DVDNumber"></asp:SqlDataSource>
    <br />
    <br />
    </asp:Content>
