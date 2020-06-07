<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="SignupPsychologist.aspx.cs" Inherits="webmaster.signupPsychologist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup-psy">
        <div id="login-box"><form id="formsignupPsy" runat="server">
  <div class="left">
    <h1>Sign up as Psychologist</h1>
    
  
    
     <div class="group">      
      <input type="text"  title="Name must contain atleast 2 characters" required runat="server" pattern="[A-Za-z]{2,}" id="txtPsyFname">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>First Name</label>

    </div>
         
    <div class="group">      
      <input type="text" title="Last name must contain atleast 2 characters" required runat="server" pattern="[A-Za-z]{2,}" id="txtPsyLname"> 
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Last Name</label>
    </div>
     <div class="group">      
      <input type="text" title="Phone no e.g. 031234567890" required runat="server" pattern="03[0-9]{9}" id="txtPsyPhone">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Phone no.</label>

    </div>
 
    <div class="group">      
      <input type="email" id="txtPsyEmail" title="abc@xyz.com" required runat="server" pattern="[A-Za-z0-9]{2,}+@[a-z]{2,}+\.[a-z]{2,}">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Email</label>
    </div>
       <div class="group">      
      <input type="text" title="CNIC e.g. 4212345678901" required runat="server" pattern="42[0-9]{11}" id="txtPsyCNIC">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>CNIC</label>

    </div>
    
     
    <div class="group">      
      <input type="password" required runat="server" id="txtPsyPass" pattern="^(?=.*[A-Za-z])(?=.*\d).{8,}$" title="Password must contain 8 characters including 1 uppercase, 1 lowercase and 1 numeric digit.">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Password</label>
    </div>
      

   
 
      
 
      </div>
 
 
  
  <div class="right">
    
    
   <h1>Education</h1>
      <div class="group">      
      <input type="text" required runat="server" title="Your latest degree, e.g. Bachelors/Masters/PHD/MPhil" id="txtPsyDegree" pattern="[A-Za-z]{3,}">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Degree</label>

    </div>
   
      
    <div class="group">      
      <input type="text" required runat="server" title="e.g. Professional Psychology" id="txtPsyProgram" pattern="[A-Za-z]{3,20}"> 
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Program</label>
    </div>
     <div class="group">      
      <input type="text" required runat="server" title="e.g. XYZ University Karachi" id="txtPsyInstitute">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Institute</label>

    </div>
 
    <div class="group">      
      <input type="text" required pattern="\d*" title="Enter number format eg. 2001" runat="server" MaxLength="4" MinLength="4" id="txtPsyYear">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Passing Year</label>
    </div>
      <script>
          function ne()
          {
          var date = new Date();
              var use = int.parse(date.getFullYear()) - 1;
              return use;
          };

      </script>
      <asp:RangeValidator ID="RangeValidator1" Display="Dynamic" ControlToValidate="txtPsyYear" runat="server" CssClass="msgr col-form-label-lg" ErrorMessage="Enter Valid Year" ></asp:RangeValidator>
       <div class="group">      
      <input type="text" required runat="server" id="txtPsyEnroll">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Enrollment</label>

    </div>
    
     
    
        <asp:Label ID="lblerror" Text="" enabled="false" CssClass="msgr" runat="server"></asp:Label>
<div class="col-md-12 text-center text-capitalize"><asp:Button ID="signbtnpsycho" runat="server" Text="Sign Up" CssClass="btn submit" OnClick="signbtnpsycho_Click"  /></div>
  </div>
 </form>   </div> 
</div> 
</asp:Content>
