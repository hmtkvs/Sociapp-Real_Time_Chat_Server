var $messages = $('.messages-content'),
    d, h, m,
    i = 0;
  var chat_list=[];
  var uname="";
  var chatid=0;
  var inited=false;
  var inited2=false;
  var roomname ="";
$(window).on('load',function() {
    $messages.mCustomScrollbar();
    roomname = document.getElementById('room').value;
});
$(function(){
  getMessages();
});
window.setInterval(function(){
  getMessages();
},1000);

function roomChange(){
  $('.message.new').remove();
  $('.message.message-personal.new').remove();
  roomname = document.getElementById('room').value;
  chat_list  = [];
}
function getMessages(){

    $.ajax({
      url:'/userChat',
      type:'get',
      success: function(result){
        result.forEach((item, i) => {
          if(!chat_list.includes(item.chat_id) && (roomname === item.room)){
            chatid=item.chat_id;

            comingMessage(item.sender_id,item.room,item.message);
            if(inited && (uname!="" || inited2)){
              chat_list.push(item.chat_id);
              inited=false;
            }

          }

        });

      },
      error:function(){

      }
  });
};
function getName(sender_id){
    $.ajax({
      url:'/allusers',
      type:'get',
      success: function(result){
        result.forEach((item, i) => {
          if(item.user_id === sender_id){
            uname = item.user_name;

          }

        });

      },
      error:function(){

      }
  });
};

function updateScrollbar() {
    $messages.mCustomScrollbar("update").mCustomScrollbar('scrollTo', 'bottom', {
        scrollInertia: 10,
        timeout: 0
    });
}

function setDate(){
    d = new Date()
    if (m != d.getMinutes()) {
        m = d.getMinutes();
        $('<div class="timestamp">' + d.getHours() + ':' + m + '</div>').appendTo($('.message:last'));
        $('<div class="checkmark-sent-delivered">&check;</div>').appendTo($('.message:last'));
        $('<div class="checkmark-read">&check;</div>').appendTo($('.message:last'));
    }
}

function insertMessage() {
    msg = $('.message-input').val();
    id = document.getElementById('user_chat_id').className;
    room = document.getElementById('room').value;
    if ($.trim(msg) == '') {
        return false;
    }
    //$('<div class="message message-personal">' + msg + '</div>').appendTo($('.mCSB_container')).addClass('new');
    //setDate();
    $('.message-input').val(null);
    updateScrollbar();
    post_message("/user/chat",msg,id,room,method="post");

}
function myMessage(msg) {

    if ($.trim(msg) == '') {
        return false;
    }
    $('<div class="message message-personal" id='+chatid+'>' + msg + '</div>').appendTo($('.mCSB_container')).addClass('new');
    if($('#'+chatid).is(':visible')){
      inited=true;
    }
    setDate();
    $('.message-input').val(null);
    updateScrollbar();
    inited2=true;

}
$('.message-submit').click(function() {
    insertMessage();
});

$(window).on('keydown', function(e) {
    if (e.which == 13) {
        insertMessage();
        return false;
    }
});

function comingMessage(sender_id,room,message) {
    if ($('.message-input').val() != '') {
        return false;
    }
    var idc = document.getElementById('user_chat_id').className;
    var id = parseInt(idc);
    if(sender_id!==id){
        getName(sender_id);
          if(uname!=""){
          $('.message.loading').remove();
          $('<div class="message new" id='+chatid+'><b>'+uname+'</b><br><figure class="avatar"><img src="/assets/images/avatar.png"></figure>' + message + '</div>').appendTo($('.mCSB_container')).addClass('new');
          if($('#'+chatid).is(':visible')){
            inited=true;

          setDate();
          updateScrollbar();
        }

        }
  }
    else{
      myMessage(message);
    }

}

$('.button').click(function(){
    $('.menu .items span').toggleClass('active');
    $('.menu .button').toggleClass('active');
});
function post_message(path, message,sender_id,room, method='post') {

  // The rest of this code assumes you are not using a library.
  // It can be made less wordy if you use one.
  const form = document.createElement('form');
  form.method = method;
  form.action = path;

  const hiddenField = document.createElement('input');
  hiddenField.type = 'hidden';
  hiddenField.name = "sender_id";
  hiddenField.value = sender_id;
  form.appendChild(hiddenField);
  const hiddenField3 = document.createElement('input');
  hiddenField3.type = 'hidden';
  hiddenField3.name = "room";
  hiddenField3.value = room;
  form.appendChild(hiddenField3);
      const hiddenField2 = document.createElement('input');
      hiddenField2.type = 'hidden';
      hiddenField2.name = "message";
      hiddenField2.value = message;
      form.appendChild(hiddenField2);



  document.body.appendChild(form);
  form.submit();

}
