$( document ).ready(function() {

  $('.influencer-grid__tile').hover(function() {
      $(this).find(':nth-child(2)').removeClass('hide');
    }, function() {
      $(this).find(':nth-child(2)').addClass('hide');
  });

  // Book Carousel
  ////////////////
  var slides = $('.slide');
  var firstSlideIndex = 0;
  var lastSlideIndex = $('.slide').length - 1;
  var currentSlideIndex = 0;
  var dots = $('.book-carousel__nav__dot');

  function updateActiveDot(direction) {
    if (direction === "forward" && currentSlideIndex != firstSlideIndex) {
      var previousDotId = "#" + (currentSlideIndex);
      var currentDotId = "#" + (currentSlideIndex + 1);
      console.log("i'm here 1");
      console.log("current slide index " + currentSlideIndex);
      console.log("last slide index " + lastSlideIndex);
      console.log("previous dot id " + previousDotId);
      console.log("current dot id " + currentDotId);
    } else if (direction === "forward" && currentSlideIndex == firstSlideIndex) {
      var previousDotId = "#" + (lastSlideIndex + 1);
      var currentDotId = "#" + (currentSlideIndex + 1);
      console.log("i'm here 2");
      console.log("current slide index " + currentSlideIndex);
      console.log("last slide index " + lastSlideIndex);
      console.log("previous dot id " + previousDotId);
      console.log("current dot id " + currentDotId);
    } else if (direction === "backward" && currentSlideIndex != firstSlideIndex) {
      var previousDotId = "#" + (currentSlideIndex);
      var currentDotId = "#" + (currentSlideIndex + 1);
      console.log("i'm here 3");
      console.log("current slide index " + currentSlideIndex);
      console.log("last slide index " + lastSlideIndex);
      console.log("previous dot id " + previousDotId);
      console.log("current dot id " + currentDotId);
    } else {
      var previousDotId = "#" + firstSlideIndex;
      var currentDotId = "#" + (currentSlideIndex + 1);
      console.log("i'm here 4");
      console.log("current slide " + currentSlideIndex);
      console.log("last slide index " + lastSlideIndex);
      console.log("previous dot id " + previousDotId);
      console.log("current dot id " + currentDotId);
    }
    $(previousDotId).removeClass("is-selected");
    $(currentDotId).addClass("is-selected");
  }

  $('.next-icon').on("click", function() {
    $($(".slide")[currentSlideIndex]).hide();
    slideForward();
    updateActiveDot("forward");
  })

  $('.previous-icon').on("click", function() {
    $($(".slide")[currentSlideIndex]).hide();
    slideBackward();
    updateActiveDot("backward");
  })

  function slideForward() {
    if (currentSlideIndex == lastSlideIndex) {
      currentSlideIndex = 0;
    } else {
      currentSlideIndex += 1;
    }
    $($(".slide")[currentSlideIndex]).css("display", "inline-block");
  }

  function slideBackward() {
    if (currentSlideIndex == 0) {
      currentSlideIndex = slides.length - 1;
    } else {
      currentSlideIndex -= 1;
    }
    $($(".slide")[currentSlideIndex]).css("display", "inline-block");
  }

  // On Document Load
  ///////////////////
  updateActiveDot("forward");

});
