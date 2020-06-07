<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardPsychologist.Master" AutoEventWireup="true" CodeBehind="BookedSessionPsycho.aspx.cs" Inherits="webmaster.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sess">
<main role="main">
			<fieldset>			
		<h2 class="text-bold text-capitalize text-dark text-center">Booked session</h2>
						<div class="form-element">
                            <asp:Label ID="lblsessionPsycho" CssClass="col-form-label-lg" runat="server" Text="Here's an overview of your upcoming sessions."></asp:Label>
                                  <asp:GridView ID="dgvSessions" runat="server" AutoGenerateColumns="False" DataSourceID="dcUpcoming">  <%--change the stored procedure's order by clause if this doesnt work--%>
                                      <Columns>
                                          <asp:BoundField DataField="CaseID" HeaderText="CaseID" SortExpression="CaseID" />
                                          <asp:BoundField DataField="SessionDate" HeaderText="SessionDate" SortExpression="SessionDate" />
                                          <asp:BoundField DataField="SessionStart" HeaderText="SessionStart" SortExpression="SessionStart" />
                                      </Columns>

                            </asp:GridView>
			                <asp:SqlDataSource ID="dcUpcoming" runat="server" ConnectionString="<%$ ConnectionStrings:str %>" SelectCommand="sp_ViewUpcomingSessions" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
			</div>
            </fieldset>
	
</main>
  </div>
</asp:Content>
