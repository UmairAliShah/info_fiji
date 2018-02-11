$(document).ready(function(){
    setTimeout(function(){
    $("#notice_wrapper").slideToggle('slow', function(){
      $(this).remove();
    });
  }, 6000);
});

function callme(mydiv){
   $('.role_div').css('background-color', 'rgba(48,110,255,0.4)');
   $(mydiv).css({"background-color":"#0041C2"});
}
