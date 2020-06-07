<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="Tests.aspx.cs" Inherits="webmaster.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-content">
         <h1>Select a Test</h1>
         <a href="Anxietytest.aspx"><button class="btntest btn btn-group-justified">
           
          <img src="ICONS/drama_48px.png" /><br />Anxiety</button></a>
           <a href="DepressionTest.aspx"><button class="btntest btn btn-group-justified">
               <img src="ICONS/mental_state_64px.png" />
            <br />Depression</button></a>
           
    </div>
</asp:Content>
