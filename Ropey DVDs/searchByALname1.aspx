<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchByALname1.aspx.cs" Inherits="Ropey_DVDs.Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> 
        <br />
        <div class="w3-teal"><h3>Search DVD Title, Date Released, Producer, Studio by Surname</h3></div>
        
        <p style="color: #0000FF"><strong><span style="font-size: small" class="w3-text-black"><em>Please Select Actor&#39;s Surname</em></span></strong> </p>
        <asp:DropDownList ID="DDSurnameList" runat="server" DataSourceID="SqlDataSource2" DataTextField="ActorSurname" DataValueField="ActorSurname" Width="161px" AutoPostBack="True" Height="71px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ActorSurname] FROM [Actor] ORDER BY [ActorSurname]">
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="779px" Height="247px" DataKeyNames="ActorNumber" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="ActorSurname" HeaderText="Actor Surname" SortExpression="ActorSurname" />
            <asp:BoundField DataField="DVDTitle" HeaderText="DVD Title" SortExpression="DVDTitle" />
            <asp:BoundField DataField="DateReleased" HeaderText="Date Released" SortExpression="DateReleased" />
            <asp:BoundField DataField="DVDNumber" HeaderText="DVD Number" SortExpression="DVDNumber" />
            <asp:BoundField DataField="ProducerName" HeaderText="Producer Name" SortExpression="ProducerName" />
            <asp:BoundField DataField="StudioName" HeaderText="Studio Name" SortExpression="StudioName" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Actor.ActorNumber, Actor.ActorSurname, DVDTitle.DVDTitle, DVDTitle.DateReleased, DVDCopy.DVDNumber, Producer.ProducerName, Studio.StudioName FROM Actor INNER JOIN CastMember ON Actor.ActorNumber = CastMember.ActorNumber INNER JOIN DVDTitle ON CastMember.DVDNumber = DVDTitle.DVDNumber INNER JOIN DVDCopy ON CastMember.DVDNumber = DVDCopy.DVDNumber INNER JOIN Studio ON DVDTitle.StudioNumber = Studio.StudioNumber INNER JOIN Producer ON DVDTitle.ProducerNumber = Producer.ProducerNumber WHERE (Actor.ActorSurname = @Param1)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DDSurnameList" Name="Param1" PropertyName="SelectedValue" />
    </SelectParameters>
    </asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
