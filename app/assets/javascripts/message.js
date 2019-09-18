$(function(){
  $('#new_message').on('submit', function(e){
    message = $('#message_content');
    App.room.speak(message.val());
    message.val('');
  });
});

