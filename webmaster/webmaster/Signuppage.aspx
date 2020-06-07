<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="SignupPage.aspx.cs" Inherits="webmaster.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-content">
          <h1>Sign up as</h1>
         <a href="SIgnUpWriter.aspx"><button class="bttn btn btn-group-justified">
           
            <img src="ICONS/hand_with_pen_60px.png" /><br />Writer</button></a>
           <a href="signupPsychologist.aspx"><button class="bttn btn btn-group-justified">
               
            <img src="ICONS/user_male_circle_52px.png" /><br />Psychologist</button></a>
           <a href="SignupPagePatient.aspx"><button class="bttn btn btn-group-justified">
           
             <img src="ICONS/user_48px.png" />  <br />Patient</button></a>
    </div>
</asp:Content>
