<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="DepressionTest.aspx.cs" Inherits="webmaster.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="test">  <h1>Depression Analyzing test</h1>
<form runat="server">
<div class="container">
 <section class="section section--taivas">
         <asp:Label ID="lblResult" runat="server" Text="" CssClass="res"></asp:Label>
    </section>
  <section class="section section--maa">
    <p> Below is a list of questions that relate to life experiences common among people who have been diagnosed with depression. Please read 
        each question carefully, and indicate how often you have experienced the same or similar challenges in the past few months.<br />
        <strong>NOTE:</strong> Your privacy is important to us. All results are completely anonymous.</p> 
 
  <section class="section section--taivas">
    <h2 class="section__title">
      Little interest or pleasure in doing things
    </h2>
       <p class="text-left col-md-12" style="margin-left:10em;"> 
     <asp:RadioButton ID="rbQ1a" value="0" runat="server" groupname="q1" /> Not at all<br />
      <asp:RadioButton ID="rbQ1b" value="1" runat="server" groupname="q1" />Several days<br />
      <asp:RadioButton ID="rbQ1c" value="2" runat="server" groupname="q1" />More than half of the days<br />
      <asp:RadioButton ID="rbQ1d" value="3" runat="server" groupname="q1" />Nearly every day<br />
  </section>
    <section class="section section--maa">
    <h2 class="section__title">
      Trouble falling or staying asleep, or sleeping too much
    </h2>
         <p class="text-left col-md-12" style="margin-left:10em;"> 
    <asp:RadioButton ID="rbQ2a" value="0" runat="server" groupname="q2" /> Not at all<br />
      <asp:RadioButton ID="rbQ2b" value="1" runat="server" groupname="q2" />Several days<br />
      <asp:RadioButton ID="rbQ2c" value="2" runat="server" groupname="q2" />More than half of the days<br />
      <asp:RadioButton ID="rbQ2d" value="3" runat="server" groupname="q2" />Nearly every day<br />
  </section>
    <section class="section section--taivas">
    <h2 class="section__title">
    Poor appetite or overeating  
    </h2>
         <p class="text-left col-md-12" style="margin-left:10em;"> 
    <asp:RadioButton ID="rbQ3a" value="0" runat="server" groupname="q3" /> Not at all<br />
      <asp:RadioButton ID="rbQ3b" value="1" runat="server" groupname="q3" />Several days<br />
      <asp:RadioButton ID="rbQ3c" value="2" runat="server" groupname="q3" />More than half of the days<br />
      <asp:RadioButton ID="rbQ3d" value="3" runat="server" groupname="q3" />Nearly every day<br />
  </section>
  <section class="section section--maa">
    <h2 class="section__title">
      Feeling tired or having little energy
    </h2>
       <p class="text-left col-md-12" style="margin-left:10em;"> 
      <asp:RadioButton ID="rbQ4a" value="0" runat="server" groupname="q4" /> Not at all<br />
      <asp:RadioButton ID="rbQ4b" value="1" runat="server" groupname="q4" />Several days<br />
      <asp:RadioButton ID="rbQ4c" value="2" runat="server" groupname="q4" />More than half of the days<br />
      <asp:RadioButton ID="rbQ4d" value="3" runat="server" groupname="q4" />Nearly every day<br />
  </section>
    <section class="section section--taivas">
    <h2 class="section__title">
      Feeling down, depressed, or hopeless
    </h2>
         <p class="text-left col-md-12" style="margin-left:10em;"> 
    <asp:RadioButton ID="rbQ5a" value="0" runat="server" groupname="q5" /> Not at all<br />
      <asp:RadioButton ID="rbQ5b" value="1" runat="server" groupname="q5" />Several days<br />
      <asp:RadioButton ID="rbQ5c" value="2" runat="server" groupname="q5" />More than half of the days<br />
      <asp:RadioButton ID="rbQ5d" value="3" runat="server" groupname="q5" />Nearly every day<br />
  </section>
    <section class="section section--maa">
    <h2 class="section__title">
      Feeling bad about yourself - or that you are a failure or have let yourself or your family down
    </h2>
         <p class="text-left col-md-12" style="margin-left:10em;"> 
        <asp:RadioButton ID="rbQ6a" value="0" runat="server" groupname="q6" /> Not at all<br />
      <asp:RadioButton ID="rbQ6b" value="1" runat="server" groupname="q6" />Several days<br />
      <asp:RadioButton ID="rbQ6c" value="2" runat="server" groupname="q6" />More than half of the days<br />
      <asp:RadioButton ID="rbQ6d" value="3" runat="server" groupname="q6" />Nearly every day<br />
  </section>
      <section class="section section--taivas">
    <h2 class="section__title">
      Trouble concentrating on things, such as reading the newspaper or watching television
    </h2>
           <p class="text-left col-md-12" style="margin-left:10em;"> 
    <asp:RadioButton ID="rbQ7a" value="0" runat="server" groupname="q7" /> Not at all<br />
      <asp:RadioButton ID="rbQ7b" value="1" runat="server" groupname="q7" />Several days<br />
      <asp:RadioButton ID="rbQ7c" value="2" runat="server" groupname="q7" />More than half of the days<br />
      <asp:RadioButton ID="rbQ7d" value="3" runat="server" groupname="q7" />Nearly every day<br />
  </section>
     <section class="section section--maa">
    <h2 class="section__title">
      Moving or speaking so slowly that other people could have noticed
    </h2>
          <p class="text-left col-md-12" style="margin-left:10em;"> 
<asp:RadioButton ID="rbQ8a" value="0" runat="server" groupname="q8" /> Not at all<br />
      <asp:RadioButton ID="rbQ8b" value="1" runat="server" groupname="q8" />Several days<br />
      <asp:RadioButton ID="rbQ8c" value="2" runat="server" groupname="q8" />More than half of the days<br />
      <asp:RadioButton ID="rbQ8d" value="3" runat="server" groupname="q8" />Nearly every day<br />
  </section>
      <section class="section section--taivas">
    <h2 class="section__title">
      Thoughts that you would be better off dead, or of hurting yourself
    </h2>
           <p class="text-left col-md-12" style="margin-left:10em;"> 
    <asp:RadioButton ID="rbQ9a" value="0" runat="server" groupname="q9" /> Not at all<br />
      <asp:RadioButton ID="rbQ9b" value="1" runat="server" groupname="q9" />Several days<br />
      <asp:RadioButton ID="rbQ9c" value="2" runat="server" groupname="q9" />More than half of the days<br />
      <asp:RadioButton ID="rbQ9d" value="3" runat="server" groupname="q9" />Nearly every day<br />
  </section>
     <section class="section section--maa">
    <h2 class="section__title">
      How difficult have these problems made it for you at work, home, school, or with other people?
    </h2>
          <p class="text-left col-md-12" style="margin-left:10em;"> 
         <asp:RadioButton ID="rbQ10a" value="0" runat="server" groupname="q10" /> Not at all<br />
      <asp:RadioButton ID="rbQ10b" value="1" runat="server" groupname="q10" />Somewhat difficult<br />
      <asp:RadioButton ID="rbQ10c" value="2" runat="server" groupname="q10" />Very Difficult<br />
      <asp:RadioButton ID="rbQ10d" value="3" runat="server" groupname="q10" />Extremely difficult<br />
  </section>
     <section class="section section--maa">
        <i><strong>Important: </strong>  The above quiz is based on the Patient Health Questionnaire (PHQ-9). If you think you(or a loved one) may be suffering 
         from Depression and/or experiencing a mental health crisis, we strongly suggest that you reach out to to a qualified 
         mental health professional.</i>
     </section>
    	<asp:Button ID="btnTestSubmit" style="padding:1.5em; font-size:1em" CssClass="btn btn-block btn-success text-white" runat="server" Text="Submit" OnClick="btnTestSubmit_Click" />
            </section>
</div>
    
</form></div>
</asp:Content>
