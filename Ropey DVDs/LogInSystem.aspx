<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogInSystem.aspx.cs" Inherits="Ropey_DVDs.LogInSystem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="w3-teal">
            <p> &nbsp;      User Log In</p>
    </div>
    <div class="w3-animate-zoom" style="text-align: center">
        
        <table class="auto-style1" align="center" style="border: medium solid #008080; width: 75%; height: 236px">
            <tr>
                <td class="w3-center" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                <td style="width: 107px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center; height: 62px; width: 194px"><strong>User Name</strong></td>
                <td class="w3-center" style="height: 62px; width: 285px">
                    <asp:TextBox ID="txtUser" runat="server" Height="30px" Width="229px"></asp:TextBox>
                </td>
                <td style="height: 62px; width: 107px"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center; width: 194px"><strong>Password</strong></td>
                <td class="w3-center" style="width: 285px">
                    <asp:TextBox ID="txtPass" runat="server" Height="30px" TextMode="Password" Width="229px"></asp:TextBox>
                </td>
                <td style="width: 107px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center; width: 194px; height: 63px;"><strong>User Type</strong></td>
                <td class="w3-center" style="width: 285px; height: 63px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="170px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Assistant</asp:ListItem>
                        <asp:ListItem>Manager</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 107px; height: 63px;"></td>
            </tr>
            <tr>
                <td class="w3-center" colspan="2" style="height: 76px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button ID="BtnSignIn" runat="server" ForeColor="Black" Height="34px" OnClick="BtnSignIn_Click" Text="Sign In" Width="127px" />
                </td>
                <td style="height: 76px; width: 107px">&nbsp;</td>
            </tr>
        </table>
       
        
        <asp:Label ID="lblError" runat="server" ForeColor="#CC3300"></asp:Label>

        <br />
        <br />

        <br />
    </div>
    <div class="w3-center"><img src="../Image/9.jpg" class="auto-style7" style="background-image: inherit" /></div>

</asp:Content>
