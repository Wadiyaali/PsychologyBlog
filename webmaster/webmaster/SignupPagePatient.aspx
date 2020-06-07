<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="SignupPagePatient.aspx.cs" Inherits="webmaster.SignupPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="signup-content">
        <div id="login-box">
  <div class="left">
    <h1>Sign up</h1>
    
  <form id="formsignuppat" runat="server">
    <div class="group">      
      <input type="text" title="Name must contain atleast 2 characters" required runat="server" pattern="[A-Za-z]{2,}" id="txtpatFname">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>First Name</label>

    </div>
   
      
    <div class="group">      
      <input type="text" title="Last name must contain atleast 2 characters" required runat="server" pattern="[A-Za-z]{2,}" id="txtpatLname"> 
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Last Name</label>
    </div>
     <div class="group">      
      <input type="text" title="Phone no e.g. 031234567890" required runat="server" pattern="03[0-9]{9}" id="txtpatPhone">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Phone no.</label>

    </div>
 
    <div class="group">      
      <input type="email" title="abc@xyz.com" required runat="server" pattern="[A-Za-z0-9]{2,}+@[a-z]{2,}+\.[a-z]{2,}" id="txtpatEmail">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Email</label>
    </div>
       <div class="group">      
      <input type="text" title="CNIC e.g. 4212345678901" required runat="server" pattern="42[0-9]{11}" id="txtpatCnic" />
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>CNIC</label>

    </div>
    
     
    <div class="group">      
      <input type="password" title="Password must contain 8 characters including 1 uppercase, 1 lowercase and 1 numeric digit." required runat="server" pattern="^(?=.*[A-Za-z])(?=.*\d).{8,}$" id="txtpatPass">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Password</label>
    </div>
         <asp:Label ID="lblerror" Display="Dynamic" enabled="False" CssClass="msgr col-form-label-lg" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
<%--      <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>--%>
 <div class="col-md-12 text-center text-capitalize"><asp:Button ID="signbtnpat" runat="server" Text="Sign Up" CssClass="btn submit" OnClick="signbtnpat_Click" /></div>
      
  </form>
      </div>
 
 
  
  <div class="right">
    <span class="loginwith">Welcome</span>
    
   <h2 class="text-center text-white "> We are pleased to have you with us. Join us and make our online community better</h2>
 </div>
    </div>
</div> 

    

</asp:Content>
