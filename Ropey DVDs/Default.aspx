<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ropey_DVDs.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="w3-display-container w3-container">
      
    <img src="Image/collection.jpg"" alt="" style="width:100%">
    <div class="w3-display-topleft w3-text-white" style="padding:24px 48px">
    </div>
  </div>

  <div class="w3-container w3-text-grey" id="jeans">
    <p>8 items</p>
  </div>

  <!-- Product grid -->
  <div class="w3-row w3-grayscale">
    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="Image/dragon.jpg" style="width:100%">
        <p>Special Price<br><b>£ 8.99</b></p>
      </div>
      <div class="w3-container">
        <img src="Image/8.jpg" style="width:100%">
        <p>New Released<br><b>£12.99</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="Image/15.jpg" style="width:100%">
          <span class="w3-tag w3-display-topleft">New</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>New Released<br><b>£ 19.99</b></p>
      </div>
      <div class="w3-container">
        <img src="Image/16.jpg" style="width:100%">
        <p>Special Offer<br><b>£6.50</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="Image/2.jpg" style="width:100%">
        <p>For Kids<br><b>£12.50</b></p>
      </div>
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="Image/11.jpg" style="width:100%">
          <span class="w3-tag w3-display-topleft">Sale</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Best Movies Just for <br><b class="w3-text-red">£12.99</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="Image/12.jpg" style="width:100%">
        <p>New Released<br><b>£14.99</b></p>
      </div>
      <div class="w3-container">
        <img src="Image/17.jpg" style="width:100%">
        <p>Find More Movies For Kids<br><b>£12.00</b></p>
      </div>
    </div>
  </div>

</asp:Content>
