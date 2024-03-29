﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mainpage.Master" AutoEventWireup="true" CodeBehind="WebForm21.aspx.cs" Inherits="webmaster.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>  
    <script>  
        var mapcode;  
        var diag;  
        function initialize() {  
            mapcode = new google.maps.Geocoder();  
            var lnt = new google.maps.LatLng(26.45, 82.85);  
            var diagChoice = {  
                zoom: 9,  
                center: lnt,  
                diagId: google.maps.MapTypeId.ROADMAP  
            }  
            diag = new google.maps.Map(document.getElementById('map_populate'), diagChoice);  
        }  
        function getmap() {  
            var completeaddress = document.getElementById('txt_location').value;  
            mapcode.geocode({ 'address': completeaddress }, function (results, status) {  
                if (status == google.maps.GeocoderStatus.OK) {  
                    diag.setCenter(results[0].geometry.location);  
                    var hint = new google.maps.Marker({  
                        diag: diag,  
                        position: results[0].geometry.location  
                    });  
                } else {  
                    alert('Location Not Tracked. ' + status);  
                }  
            });  
        }  
        google.maps.event.addDomListener(window, 'load', initialize);  
    </script> 
    <form id="form1" runat="server">  
     
        <div>  
            <h1>Enter Your Location Details</h1>  
        </div>  
        <div>  
            <asp:TextBox ID="txt_location" TextMode="MultiLine" Width="400px" Height="70px" runat="server"></asp:TextBox>  
    </div>  
        <div>  
            <input type="button" value="Search" onclick="getmap()">  
        </div>  
    <div id="map_populate" style="width:100%; height:500px; border: 5px solid #5E5454;">  
    </div>  
    </form>  
</asp:Content>
