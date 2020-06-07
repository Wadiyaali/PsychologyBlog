<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardPsychologist.Master" AutoEventWireup="true" CodeBehind="Writearticlepsychologist.aspx.cs" Inherits="webmaster.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="article">
        <header class="header new-article">
            <div class="content-wrap">
                <h2 class="title-page vert-align">New Post</h2>
               
                
              
            </div> 
        </header>
        <div class="add-new-article">
            <h5 class="text-center text-light text-dark"> *this page is dedicated to write articles for mental health. By publishing article you are agreeing to terms and 
                    condition of our page and your identity won't stay anonymous until you have an account dedicated 
                    to writers only.
                </h5>
            <div class="col-md-12 text-center">  <asp:Label runat="server" ID="msglbl" CssClass="msgr text-danger"></asp:Label>
    
            <div class="content-wrap">
                
                    <label class="name-field">Title
                        <input type=text size=30 name=title class="light-text" id="txtarticletitlepsycho" runat="server">
                    </label>
                    <label class="name-field">Description
                        <textarea name=text rows=8 cols=40 maxlength=2000 class="light-text" id="txtarticlecontentpsycho" runat="server"></textarea>
                    </label>
                  <asp:Button ID="btnPatarticlesubmit" runat="server" Text="Done" CssClass="btn btn-success btn-lg text-white" OnClick="btnPatarticlesubmit_Click" />
            </div>
        </div>
     
    </div></div>
</asp:Content>
