// Smooth Scroll Animation
$(document).ready(function() {
  $('#view').click(function(){
    $('html, body').animate({
      scrollTop: $( $(this).attr('href') ).offset().top
    }, 900);
    return false;
  });
});
