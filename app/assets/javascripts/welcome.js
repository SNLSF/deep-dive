$(function(){

  // influencer hover
  // ================

  $('.influencer-grid__tile').hover(function() {
      $(this).find(':nth-child(2)').removeClass('hide');
    }, function() {
      $(this).find(':nth-child(2)').addClass('hide');
  });

  // book carousel
  // =============

  var slides = $('.slide');
  var firstSlideIndex = 0;
  var lastSlideIndex = $('.slide').length - 1;
  var currentSlideIndex = 0;

  // update dots that track which slide you are on
  function updateActiveDot(direction) {
    if (direction === "forward" && currentSlideIndex != firstSlideIndex) {
      var previousDotId = "#" + (currentSlideIndex);
      var currentDotId = "#" + (currentSlideIndex + 1);
    } else if (direction === "forward" && currentSlideIndex == firstSlideIndex) {
      var previousDotId = "#" + (lastSlideIndex + 1);
      var currentDotId = "#" + (currentSlideIndex + 1);
    } else if (direction === "backward" && currentSlideIndex != lastSlideIndex) {
      var previousDotId = "#" + (currentSlideIndex + 2);
      var currentDotId = "#" + (currentSlideIndex + 1);
    } else {
      var previousDotId = "#" + (firstSlideIndex + 1);
      var currentDotId = "#" + (currentSlideIndex + 1);
    }
    $(previousDotId).removeClass("is-selected");
    $(currentDotId).addClass("is-selected");
  }

  // handle click for next icon on carousel
  $('.next-icon').on("click", function() {
    $($(".slide")[currentSlideIndex]).hide();
    slideForward();
    updateActiveDot("forward");
  })

  // edge case for next slide when on last slide
  function slideForward() {
    if (currentSlideIndex == lastSlideIndex) {
      currentSlideIndex = 0;
    } else {
      currentSlideIndex += 1;
    }
    $($(".slide")[currentSlideIndex]).css("display", "inline-block");
  }

  // handle click for previous icon on carousel
  $('.previous-icon').on("click", function() {
    $($(".slide")[currentSlideIndex]).hide();
    slideBackward();
    updateActiveDot("backward");
  })

  // edge case for previous slide when on first slide
  function slideBackward() {
    if (currentSlideIndex == 0) {
      currentSlideIndex = slides.length - 1;
    } else {
      currentSlideIndex -= 1;
    }
    $($(".slide")[currentSlideIndex]).css("display", "inline-block");
  }

  // toggle quote
  // ============

  $('.js-quote-drawer').each(function(index, quote) {
    var $quote = $(quote),
      drawerId = $quote.attr('aria-controls'),
      $drawer = $('#'+drawerId),
      $controls = $('[aria-controls="' + drawerId + '"]');

    $quote.on('click', function(e) {
      $quote.toggleClass('is-open');
      $drawer.toggleClass('hide');
    })

  });

  // update local UI
  // ===============

  updateActiveDot("forward");

});

