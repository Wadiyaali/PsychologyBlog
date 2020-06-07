<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="SignUpWriter.aspx.cs" Inherits="webmaster.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="signup-content">
        <div id="login-box">
  <div class="left">
    <h1>Sign up as Writer</h1>
    
  <form id="formsignupwriter" runat="server">
    
    <div class="group">      
      <input type="text" title="Name must contain atleast 2 characters" required runat="server" pattern="[A-Za-z]{2,}" id="txtwriterFname">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>First Name</label>

    </div>
   
      
    <div class="group">      
      <input type="text" title="Last name must contain atleast 2 characters" required runat="server" pattern="[A-Za-z]{2,}" id="txtwriterLname"> 
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Last Name</label>
    </div>
     <div class="group">      
      <input type="text" title="Phone no e.g. 031234567890" required runat="server" pattern="03[0-9]{9}" id="txtwriterPhone">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Phone no.</label>

    </div>
 
    <div class="group">      
      <input type="email" title="abc@xyz.com" required runat="server" pattern="[A-Za-z0-9]{2,}+@[a-z]{2,}+\.[a-z]{2,}" id="txtwriterEmail">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Email</label>
    </div>
       <div class="group">      
      <input type="text" title="CNIC e.g. 4212345678901" required runat="server" pattern="42[0-9]{11}" id="txtwriterCnic">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>CNIC</label>

    </div>
    
     
    <div class="group">      
      <input type="password" title="Password must contain 8 characters including 1 uppercase, 1 lowercase and 1 numeric digit." required runat="server" pattern="^(?=.*[A-Za-z])(?=.*\d).{8,}$" id="txtwriterPass">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Password</label>
    </div>
      

      <asp:Label ID="lblerror" Text="" enabled="false" CssClass="msgr" runat="server"></asp:Label>
 <div class="col-md-12 text-center text-capitalize"><asp:Button ID="signbtnwriter" runat="server" Text="Sign Up" CssClass="btn submit" OnClick="signbtnwriter_Click" /></div>
      
  </form>
      </div>
 
 
  
  <div class="right">
    <span class="loginwith">Welcome</span>
    
   <h2 class="text-center text-white "> We are pleased to have you with us. Join us and make our online community better</h2>
  </div>
    </div>
</div> 
</asp:Content>
