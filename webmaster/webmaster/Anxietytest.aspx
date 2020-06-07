<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="Anxietytest.aspx.cs" Inherits="webmaster.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="test">
        <h1>Anxiety Analyzing test</h1>
<form runat="server">
<div class="container">
    <section class="section section--maa">
        <asp:Label ID="lblResult" runat="server" Text="" CssClass="res"></asp:Label>

    </section>
 <section class="section section--taivas">
     <p> Below is a list of questions that relate to life experiences common among people who have been diagnosed with anxiety. Please read 
        each question carefully, and indicate how often you have experienced the same or similar challenges in the past few months.<br />
        <strong>NOTE:</strong> Your privacy is important to us. All results are completely anonymous.
  </p>
  <section class="section section--maa">
    <h2 class="section__title">
     Do you experience intense worry and find it difficult to control?
    </h2>
   <p class="text-left col-md-12" style="margin-left:10em;">  <asp:RadioButton ID="rbQ1a" value="0" runat="server" groupname="q1" />Never<br />
      <asp:RadioButton ID="rbQ1b" value="1" runat="server" groupname="q1"   />Rarely<br />
      <asp:RadioButton ID="rbQ1c" value="2" runat="server" groupname="q1"   />Sometimes<br />
      <asp:RadioButton ID="rbQ1d" value="3" runat="server" groupname="q1"   />Often<br />
      <asp:RadioButton ID="rbQ1e" value="4" runat="server" groupname="q1"  />Very often<br /></p> 
  </section>
  <section class="section section--taivas">
    <h2 class="section__title">
      Does worry or anxiety make you feel irritable or fatigued?
    </h2>
 <p class="text-left col-md-12" style="margin-left:10em;"> 
   <asp:RadioButton ID="rbQ2a" value="0" runat="server" groupname="q2" />Never<br />
      <asp:RadioButton ID="rbQ2b" value="1" runat="server" groupname="q2" />Rarely<br />
      <asp:RadioButton ID="rbQ2c" value="2" runat="server" groupname="q2" />Sometimes<br />
      <asp:RadioButton ID="rbQ2d" value="3" runat="server" groupname="q2" />Often<br />
      <asp:RadioButton ID="rbQ2e" value="4" runat="server" groupname="q2" />Very often<br />
  </section>

    <section class="section section--maa">
    <h2 class="section__title">
      Does worry or anxiety disturb your sleep or ability to concentrate?
    </h2>
         <p class="text-left col-md-12" style="margin-left:10em;"> 
     <asp:RadioButton ID="rbQ3a" value="0" runat="server" groupname="q3" />Never<br />
      <asp:RadioButton ID="rbQ3b" value="1" runat="server" groupname="q3" />Rarely<br />
      <asp:RadioButton ID="rbQ3c" value="2" runat="server" groupname="q3" />Sometimes<br />
      <asp:RadioButton ID="rbQ3d" value="3" runat="server" groupname="q3" />Often<br />
      <asp:RadioButton ID="rbQ3e" value="4" runat="server" groupname="q3" />Very often<br />
  </section>

    <section class="section section--taivas">
    <h2 class="section__title">
      Do you experience constant thoughts that are upsetting and unwanted?
    </h2>
         <p class="text-left col-md-12" style="margin-left:10em;"> 
    <asp:RadioButton ID="rbQ4a" value="0" runat="server" groupname="q4" />Never<br />
      <asp:RadioButton ID="rbQ4b" value="1" runat="server" groupname="q4" />Rarely<br />
      <asp:RadioButton ID="rbQ4c" value="2" runat="server" groupname="q4" />Sometimes<br />
      <asp:RadioButton ID="rbQ4d" value="3" runat="server" groupname="q4" />Often<br />
      <asp:RadioButton ID="rbQ4e" value="4" runat="server" groupname="q4" />Very often<br />
  </section>
  
  
  <section class="section section--maa">
    <h2 class="section__title">
    Do you experience strong fear that causes panic, shortness of breath, chest pains, a pounding heart, sweating, shaking, nausea, dizziness, and/or fear of dying?
    </h2>
       <p class="text-left col-md-12" style="margin-left:10em;"> 
     <asp:RadioButton ID="rbQ5a" value="0" runat="server" groupname="q5" />Never<br />
      <asp:RadioButton ID="rbQ5b" value="1" runat="server" groupname="q5" />Rarely<br />
      <asp:RadioButton ID="rbQ5c" value="2" runat="server" groupname="q5" />Sometimes<br />
      <asp:RadioButton ID="rbQ5d" value="3" runat="server" groupname="q5" />Often<br />
      <asp:RadioButton ID="rbQ5e" value="4" runat="server" groupname="q5" />Very often<br />
  </section>  

     <section class="section section--taivas">
    <h2 class="section__title">
      Do you avoid social situations due to fear of this panic?
    </h2>
          <p class="text-left col-md-12" style="margin-left:10em;"> 
    <asp:RadioButton ID="rbQ6a" value="0" runat="server" groupname="q6"  />Never<br />
      <asp:RadioButton ID="rbQ6b" value="1" runat="server" groupname="q6"   />Rarely<br />
      <asp:RadioButton ID="rbQ6c" value="2" runat="server" groupname="q6"   />Sometimes<br />
      <asp:RadioButton ID="rbQ6d" value="3" runat="server" groupname="q6" />Often<br />
      <asp:RadioButton ID="rbQ6e" value="4" runat="server" groupname="q6" />Very often<br /></p>
  </section>  

     <section class="section section--maa">
    <h2 class="section__title">
     Do you ever engage in repetitive behaviors to manage your worry? (i.e. checking the oven is off, locking doors, washing hands, counting, repeating words)
    </h2>

         <p class="text-left col-md-12" style="margin-left:10em;"> 
     <asp:RadioButton ID="rbQ7a" value="0" runat="server" groupname="q7" />Never<br />
      <asp:RadioButton ID="rbQ7b" value="1" runat="server" groupname="q7" />Rarely<br />
      <asp:RadioButton ID="rbQ7c" value="2" runat="server" groupname="q7" />Sometimes<br />
      <asp:RadioButton ID="rbQ7d" value="3" runat="server" groupname="q7" />Often<br />
      <asp:RadioButton ID="rbQ7e" value="4" runat="server" groupname="q7" />Very often<br />
             </p>
  </section>  
    <div class="btn btn-block">
				<asp:Button ID="btnTestSubmit" style="padding:1.5em; font-size:1em" CssClass="btn btn-lg btn-block btn-success text-white" runat="server" Text="Submit" OnClick="btnTestSubmit_Click"/>
			</div>
   
     <section class="section section--taivas">
    <i> <strong>Important: </strong>The above quiz is based on the Patient Health Questionnaire (PHQ-9). If you think you(or a loved one) may be suffering 
         from Anxiety and/or experiencing a mental health crisis, we strongly suggest that you reach out to to a qualified 
         mental health professional.</i>  
     </section>
     </section>
</div>
    </form>
</div>
</asp:Content>
