<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="shop4.aspx.cs" Inherits="Ropey_DVDs.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
        <div class="w3-teal"><h1>List of Producer Studio and Cast List Of DVD</h1></div>
    <table class="auto-style1" style="width: 100%; height: 41px">
            <tr>
                <td class="auto-style2" style="width: 158px">                                 

                <td class="auto-style2" style="width: 533px; text-align: center;"><strong>&nbsp;User</strong>: <strong> <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></strong></td>
                <td class="w3-center">
                    <asp:Button ID="btnLogOut" runat="server" Text=" Log Out" OnClick="btnLogOut_Click" style="margin-left: 58" Width="90px" />
                </td>
            </tr>
        </table>
        
        <p>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ActorNumber,DVDNumber" ForeColor="Black" ViewStateMode="Enabled" Width="800px" PageSize="60" style="margin-right: 24px">
                <Columns>
                    <asp:BoundField DataField="ProducerName" HeaderText="Producer Name" SortExpression="ProducerName" />
                    <asp:BoundField DataField="DVDTitle" HeaderText="DVD Title" SortExpression="DVDTitle" />
                    <asp:BoundField DataField="DateReleased" HeaderText="Date Released" SortExpression="DateReleased" />
                    <asp:BoundField DataField="ActorSurname" HeaderText="Actor Surname" SortExpression="ActorSurname" />
                    <asp:BoundField DataField="ActorNumber" HeaderText="Actor Number" ReadOnly="True" SortExpression="ActorNumber" />
                    <asp:BoundField DataField="DVDNumber" HeaderText="DVD Number" ReadOnly="True" SortExpression="DVDNumber" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Producer.ProducerName, DVDTitle.DVDTitle, DVDTitle.DateReleased, Actor.ActorSurname, CastMember.ActorNumber, CastMember.DVDNumber, Studio.StudioName FROM Producer INNER JOIN DVDTitle ON Producer.ProducerNumber = DVDTitle.ProducerNumber INNER JOIN CastMember ON DVDTitle.DVDNumber = CastMember.DVDNumber INNER JOIN Actor ON CastMember.ActorNumber = Actor.ActorNumber INNER JOIN Studio ON DVDTitle.StudioNumber = Studio.StudioNumber ORDER BY DVDTitle.DateReleased, DVDTitle.DVDTitle, Actor.ActorSurname"></asp:SqlDataSource>
        </p>
      
  
</asp:Content>
