$( document ).ready(function() {

  $('.influencer-grid__tile').hover(function() {
      $(this).find(':nth-child(2)').removeClass('hide');
    }, function() {
      $(this).find(':nth-child(2)').addClass('hide');
    });

  // Book Carousel
  var currentSlides = [0..1];

  if 




  // var currentSlide = 0;

  // $(".next").on("click", function() {
  //   $($(".slide")[currentSlide]).hide();
  //   nextSlide(true);
  // })

  // $(".previous").on("click", function() {
  //   $($(".slide")[currentSlide]).hide();
  //   nextSlide(false);
  // })

  // function nextSlide(forward) {
  //   if (forward == true && currentSlide == $('.slide').length - 1){
  //     currentSlide = 0;
  //   } else if (forward == false && currentSlide == 0){
  //     currentSlide = $('.slide').length - 1;
  //   } else if (forward == true){
  //     currentSlide += 1;
  //   } else if (forward == false) {
  //     currentSlide -= 1;
  //   }
  //   $($('.slide')[currentSlide]).show();
  // };

});
