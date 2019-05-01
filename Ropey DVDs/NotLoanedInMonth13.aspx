<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NotLoanedInMonth13.aspx.cs" Inherits="Ropey_DVDs.NotLoanedInMonth13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="w3-teal"> <h3>DVD not in Loan Past 30 Days </h3></div>
       <br />
       
   
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Height="167px" Width="471px">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
       
   
</asp:Content>
