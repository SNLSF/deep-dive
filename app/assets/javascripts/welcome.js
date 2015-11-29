$( document ).ready(function() {

  $('.influencer-grid__tile').hover(function() {
      $(this).find(':nth-child(2)').removeClass('hide');
    }, function() {
      $(this).find(':nth-child(2)').addClass('hide');
    });

});
