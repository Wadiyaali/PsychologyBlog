<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardPsychologist.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="webmaster.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" Visible="False">
   <script src="https://ajax.aspnetcdn.com/ajax/signalr/jquery.signalr-2.2.1.js">

   </script>
  <script src="https://ajax.aspnetcdn.com/ajax/signalr/jquery.signalr-2.2.1.min.js">

  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="chat">
        <%--<div class="i-frame-container">
  <iframe  src="https://sleepy-anchorage-59959.herokuapp.com/course_gui/chat" border="0" id="frame" height="400"
></iframe>
</div>--%>.
    <input type="text" style="color:black;" id="message" />
        <input type="button" style="color:black;" id="sendmessage" value="send" />
        <input type="hidden" id="displayname" />
        <ul id="discussion" style="color:black;"></ul>
        <script src="Scripts/jquery-1.10.2.min.js"></script>
        <script src="Scripts/jquery.signalR-2.0.2.min.js"></script>
        <script src="signalr/hubs"></script>
        <script type="text/javascript">
            $(function () {
                var chat = $.connection.chathub;
                chat.client.broadcastMessage = function (name, message) {
                    var encodedname = $('<div/>').text(name).html();
                    var encodedMsg = $('<div/>').text(message).html();
                    $('#discussion').append('<li><strong>' + encodedname + '</strong>:&nbsp;&nbsp;' + encodedMsg + '</li>');
                };
                $('#discussion').val(prompt('Enter your name:', ""));
                $('#message').focus();

                $.connection.hub.start().done(function () {
                    $('#sendmessage').click(function () {
                        chat.server.send($('#displayname').val(), $("#message").val());
                        $('#message').val('').focus();
                    });
                });
            });

</script>
        </div>
</asp:Content>
