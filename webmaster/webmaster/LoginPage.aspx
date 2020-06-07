<%@ Page Title="Login" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="webmaster.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
      <script type="text/javascript" language="javascript">
        window.history.forward();  
     function DisableBackButton(){
       window.history.forward()
      }
     DisableBackButton();
     window.onload = DisableBackButton;
     window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
     window.onunload = function() { void (0) }
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-content">
  
   <form class="login-form"  runat="server" autocomplete="off">
    <h1 class="login-text">
        <span><i class="fa fa-3x fa-user-circle-o"></i></span>
  <%--  <span class="fa-stack fa-lg">
      <i class="fa fa-circle fa-stack-2x text-dark"></i>
      <i class="fa fa-lock fa-stack-1x"></i>
    </span>--%>
 </h1>
       <asp:Label ID="Label1" runat="server" Text="" CssClass="text-capitalize msgr"></asp:Label>
    <div class="form-field">
        <i class="fas fa-user"></i>
        <input type="text" runat="server" name="username" id="txtusername" class="form-field" title="Enter correct username"  placeholder=" " required>
        <label for="username" class="lbl">Email</label>
    </div>

    <div class="form-field">
        <i class="fas fa-lock"></i>
        <input type="password" runat="server" name="password" id="txtpassword" class="form-field" placeholder=" " required>
        <label for="password" class="lbl">Password</label>
    </div>
       
<div class="wrap">
      
<!--Select with pure css-->
      <div class="select">
					<%--<select class="select-text" runat="server" id="loginas" style="color:white;" required>
						<option value="" disabled selected></option>
						<option value="w">Writer</option>
						<option value="2">Psychologist</option>
						<option value="3">Patient</option>
					</select>--%>     
          <asp:DropDownList ID="txtDDlogin" runat="server" CssClass="select-text text-light">
                   
                        <asp:ListItem Value="writer">
                            Writer
                        </asp:ListItem>
                        <asp:ListItem Value="psycho">Psychologist</asp:ListItem>
                         <asp:ListItem Value="pat">Patient</asp:ListItem>
					         </asp:DropDownList>
					<span class="select-highlight">		</span>
	<span class="select-bar">		</span>
					<label class="select-label">Select</label>
				</div>
<!--Select with pure css-->
      
    </div>
   
    <asp:Button ID="Lginbtn1" runat="server" Text="Login" CssClass="btn" OnClick="Lginbtn_Click" OnClientClick="Lginbtn_Click" />
</form>
        
	 
</div>
   <script>
     
   </script>
</asp:Content>
