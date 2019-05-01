<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchForAvailable2.aspx.cs" Inherits="Ropey_DVDs.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="w3-teal">
        <h3>
            Check Avaiability of DVD by Actor's Surname  
        </h3>
 </div>
                       
        <br />
                       
        <asp:DropDownList ID="DDlistSurnameOfActor" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceList" DataTextField="ActorSurname" DataValueField="ActorSurname" Height="61px" Width="139px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceForCheckAvailablity" Width="525px" DataKeyNames="CopyNumber">
            <Columns>
                <asp:BoundField DataField="ActorSurname" HeaderText="Actor Surname" SortExpression="ActorSurname" />
                <asp:BoundField DataField="DVDTitle" HeaderText="DVD Title" SortExpression="DVDTitle" />
                <asp:BoundField DataField="DateReleased" HeaderText="Date Released" SortExpression="DateReleased" />
                <asp:BoundField DataField="StandardCharge" HeaderText="Standard Charge" SortExpression="StandardCharge" />
                <asp:BoundField DataField="CopyNumber" HeaderText="Copy Number" ReadOnly="True" SortExpression="CopyNumber" />
                <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceForCheckAvailablity" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Actor.ActorSurname, DVDTitle.DVDTitle, DVDTitle.DateReleased, DVDTitle.StandardCharge, DVDCopy.CopyNumber, CopyDVDCopy.DVDNumber AS Available FROM Actor INNER JOIN CastMember ON Actor.ActorNumber = CastMember.ActorNumber INNER JOIN DVDTitle ON CastMember.DVDNumber = DVDTitle.DVDNumber INNER JOIN CopyDVDCopy ON CastMember.DVDNumber = CopyDVDCopy.DVDNumber INNER JOIN DVDCopy ON CastMember.DVDNumber = DVDCopy.DVDNumber WHERE (Actor.ActorSurname = @Param1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDlistSurnameOfActor" Name="Param1" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceList" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ActorSurname] FROM [Actor]"></asp:SqlDataSource>







    </div>

</asp:Content>
