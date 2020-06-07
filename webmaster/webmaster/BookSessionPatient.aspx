<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardPatient.Master" AutoEventWireup="true" CodeBehind="BookSessionPatient.aspx.cs" Inherits="webmaster.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="StyleSheet2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sess">
<main role="main">
			<fieldset>			
		<h2 class="text-bold text-capitalize text-dark text-center">Book a session</h2>
				
					<div class="form-element">
						<p><label for="checkindate" class="col-md-4">Check-in Date</label>
						<input id="dateSession" title="The closest appointment you can book, is for tomorrow." class="col-md-4" type="date" min='' max='31-12-2022' name="checkindate" runat="server"/>

                       
						</p>
					</div>		
					<div class="form-element">
						<p><label class="col-md-4"> Stay Anonymous?</label>
						<select runat="server" class="col-md-4" id="anonym">
      <option value="yes" >Yes</option>
      <option value="no" >No</option>
      </select></p>
						</div>
				
						<div class="form-element">
					<p>	<label for="Timesession" class="col-md-4">Time (1HR-24HR)</label>
                        <asp:TextBox name="tbTime" class="col-md-4" id="tbSessionTime" type="number" min="1" max="24" runat="server"></asp:TextBox>
					
			</p>	</div>
					
					
					<div class="form-element">
				<p>	<label class="col-md-4"> Expected Problem</label>
                    <asp:DropDownList ID="ddEP" CssClass="col-md-4" runat="server" DataSourceID="SqlDataSource1" DataTextField="DisorderName" DataValueField="DisorderID"></asp:DropDownList>

				    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:str %>" SelectCommand="SELECT * FROM [Disorder]"></asp:SqlDataSource>

				</p>	

					</div>
                <div class="form-element">
					<p>	<label for="Severity" class="col-md-4">Severity of problem</label>
                        <asp:TextBox name="tbSev" class="col-md-4" id="tbSev" type="number" min="0" max="5" runat="server"></asp:TextBox>
					
			</p>	</div>
				<div class="form-element">
						<p> <label class="col-md-4">Psychologist</label> 
						
       <asp:DropDownList ID="ddPsy" CssClass="col-md-4" runat="server" DataSourceID="dcPsy2" DataTextField="PsyName" DataValueField="UserID"></asp:DropDownList>
                            <asp:SqlDataSource ID="dcPsy2" runat="server" ConnectionString="<%$ ConnectionStrings:str %>" SelectCommand="sp_ViewPsy" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                               <asp:SqlDataSource ID="dcPsy" runat="server"></asp:SqlDataSource>
      </p>
					</div>
			<p></p>
			<div class="btn btn-block">
				<asp:Button ID="btnSessionsbmt" CssClass="btn btn-block btn-success text-white" runat="server" Text="Submit" OnClick="btnSessionsbmt_Click1"/>
			</div>
            </fieldset>
	
</main>
  </div>
     <script>
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1; //January is 0
        var yyyy = today.getFullYear();
        if(dd<10){
               dd='0'+dd
                 } 
        if(mm<10){
               mm='0'+mm
                } 

        today = yyyy+'-'+mm+'-'+dd;
        document.getElementById("dateSession").setAttribute("min", today+1);
    </script>
</asp:Content>
