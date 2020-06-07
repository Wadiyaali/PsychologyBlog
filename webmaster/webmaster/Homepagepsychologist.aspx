<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardPsychologist.Master" AutoEventWireup="true" CodeBehind="Homepagepsychologist.aspx.cs" Inherits="webmaster.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-overview">
     
      <div class="overviewCard">
        <div class="overviewCard-icon overviewCard-icon--calendar">
           <i class="far fa-calendar-check"></i>
        </div>
        <div class="overviewCard-description">
          <h3 class="overviewCard-title">Upcoming Event</h3>
          <p class="overviewCard-subtitle">MHA Camp 2019</p>
        </div>
      </div>
      <div class="overviewCard">
        <div class="overviewCard-icon overviewCard-icon--mail">
           <i class="far fa-envelope"></i>
        </div>
        <div class="overviewCard-description">
          <h3 class="overviewCard-title"> Aurora Members</h3>
          <p class="overviewCard-subtitle">Yearly Dinner 2020</p>
        </div>
      </div>
      <div class="overviewCard">
        <div class="overviewCard-icon overviewCard-icon--photo">
           <i class="far fa-file-image"></i>
        </div>
        <div class="overviewCard-description">
          <h3 class="overviewCard-title">Fund Raising Concert</h3>
          <p class="overviewCard-subtitle">Karachi's Biggest Concert</p>
        </div>
      </div>
    </div> <!-- /.main__overview -->
    <div class="main__cards">
      <div class="card">
        <div class="card__header">
          <div class="card__header-title text-light">Aurora Events
          </div>
          <div class="settings">
            <div class="settings__block"><i class="fas fa-edit"></i></div>
            <div class="settings__block"><i class="fas fa-close"></i></div>
          </div>
        </div>
        <div class="card__main">
          <div class="card__row">
            <div class="card__icon"><i class="fas fa-gift"></i></div>
            <div class="card__time">
              <div>Recent</div>
            </div>
            <div class="card__detail">
              <div class="card__source text-bold">Mental Health Awareness</div>
              <div class="card__description">Monthly Awarness camp with free professional help available.</div>
              <div class="card__note">21 Dec, Clifton, Karachi.</div>
            </div>
          </div>
          <div class="card__row">
            <div class="card__icon"><i class="fas fa-plane"></i></div>
            <div class="card__time">
              <div>February</div>
            </div>
            <div class="card__detail">
              <div class="card__source text-bold">International Conference</div>
              <div class="card__description">In colloboration with London's biggest NGO</div>
              <div class="card__note">21 Feb, London.</div>
            </div>
          </div>
          <div class="card__row">
            <div class="card__icon"><i class="fas fa-book"></i></div>
            <div class="card__time">
              <div>February</div>
            </div>
            <div class="card__detail">
              <div class="card__source text-bold">Biggest Book Sale</div>
              <div class="card__description">Fund raising campaign</div>
              <div class="card__note">1:00-5:00 pm, 28 Feb, Lahore</div>
            </div>
          </div>
          
        </div>
      </div>
      <div class="card">
        <div class="card__header">
          <div class="card__header-title text-light">Recent Activities
          
          </div>
          <div class="settings">
            <div class="settings__block"><i class="fas fa-edit"></i></div>
            <div class="settings__block"><i class="fas fa-close"></i></div>
          </div>
        </div>
        <div class="card">
          <div class="documents">
            <div class="document">
              <div class="document__img"></div>
              <div class="document__title">Resolution</div>
              <div class="document__date">07/16/2018</div>
            </div>
            <div class="document">
              <div class="document__img"></div>
              <div class="document__title">yearly-budget</div>
              <div class="document__date">09/04/2018</div>
            </div>
            <div class="document">
              <div class="document__img"></div>
              <div class="document__title">Top psychologists</div>
              <div class="document__date">10/10/2018</div>
            </div>
            <div class="document">
              <div class="document__img"></div>
              <div class="document__title">Products</div>
              <div class="document__date">11/01/2018</div>
            </div>
          </div>
        </div>
      </div>

    </div> 
</asp:Content>
