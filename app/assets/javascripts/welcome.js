$( document ).ready(function() {

  $('.influencer-grid__tile').hover(function() {
      $(this).find(':nth-child(2)').removeClass('hide');
    }, function() {
      $(this).find(':nth-child(2)').addClass('hide');
    });

  // Book Carousel
  ////////////////

  var currentSlide = 0;
  var slides = $('.slide');

  $('.next-icon').on("click", function() {
    $($(".slide")[currentSlide]).hide();
    slideForward();
  })

  $('.previous-icon').on("click", function() {
    $($(".slide")[currentSlide]).hide();
    slideBackward();
  })

  function slideForward() {
    if (currentSlide == $('.slide').length - 1) {
      currentSlide = 0;
    } else {
      currentSlide += 1;
    }
    $($(".slide")[currentSlide]).css("display", "inline-block");
  }

  function slideBackward() {
    if (currentSlide == 0) {
      currentSlide = slides.length - 1;
    } else {
      currentSlide -= 1;
    }
    $($(".slide")[currentSlide]).css("display", "inline-block");
  }

});
