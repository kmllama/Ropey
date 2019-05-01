<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword(F14).aspx.cs" Inherits="Ropey_DVDs.ChangePassword_F14_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1" style="width: 109%; height: 44px">
            <tr>
                <td class="auto-style2" style="width: 158px">


                
                    <strong>User:
<asp:Label ID="lblUserName" runat="server"></asp:Label>
                    </strong>
               
                <td class="auto-style2" style="width: 603px; text-align: center;">
<asp:Label ID="lblUserType" runat="server"></asp:Label>
                </td>
                <td class="w3-center">
                    <asp:Button ID="btnLogOut" runat="server" Text=" Log Out" OnClick="btnLogOut_Click" style="margin-left: 58" Width="90px" />
                </td>
            </tr>
        </table>

    <div class="w3-amber">
        <h3>Update User Details & Password</h3>

    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="UserNumber" DataSourceID="SqlDataSource1" ForeColor="Black" Width="530px">
        <Columns>
            <asp:BoundField DataField="UserNumber" HeaderText="User Number" ReadOnly="True" SortExpression="UserNumber" />
            <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
            <asp:BoundField DataField="UserType" HeaderText="User Type" SortExpression="UserType" />
            <asp:BoundField DataField="UserPassword" HeaderText="User Password" SortExpression="UserPassword" />
            <asp:CommandField ShowEditButton="True" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserNumber] = @UserNumber" InsertCommand="INSERT INTO [User] ([UserNumber], [UserName], [UserType], [UserPassword]) VALUES (@UserNumber, @UserName, @UserType, @UserPassword)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [UserName] = @UserName, [UserType] = @UserType, [UserPassword] = @UserPassword WHERE [UserNumber] = @UserNumber">
    <DeleteParameters>
        <asp:Parameter Name="UserNumber" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserNumber" Type="Int32" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="UserType" Type="String" />
        <asp:Parameter Name="UserPassword" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="UserType" Type="String" />
        <asp:Parameter Name="UserPassword" Type="String" />
        <asp:Parameter Name="UserNumber" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
    <br />
<br />
<br />
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" Width="535px">
    <Columns>
        <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
        <asp:BoundField DataField="UserPassword" HeaderText="User Password" SortExpression="UserPassword" />
        <asp:CommandField ShowEditButton="True" />
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserNumber] = @UserNumber" InsertCommand="INSERT INTO [User] (UserPassword) VALUES (@UserPassword)" SelectCommand="SELECT UserName, UserPassword FROM [User] WHERE (UserName = @Param1)" UpdateCommand="UPDATE [User] SET UserPassword = @UserPassword WHERE (UserNumber = @UserNumber)">
    <DeleteParameters>
        <asp:Parameter Name="UserNumber" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserPassword" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="lblUserName" Name="Param1" PropertyName="Text" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserPassword" Type="String" />
        <asp:Parameter Name="UserNumber" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
