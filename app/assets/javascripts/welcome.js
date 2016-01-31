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
  var firstIndex = 0;
  var lastIndex = $('.slide').length - 1;
  var currIndex = 0;

  // update dots that track which slide you are on
  function updateActiveDot(dir) {
    if (dir === "forward" && currIndex != firstIndex) {
      var prevId = "#" + (currIndex),
          currId = "#" + (currIndex + 1);
    } else if (dir === "forward" && currIndex == firstIndex) {
      var prevId = "#" + (lastIndex + 1),
          currId = "#" + (currIndex + 1);
    } else if (dir === "backward" && currIndex != lastIndex) {
      var prevId = "#" + (currIndex + 2),
          currId = "#" + (currIndex + 1);
    } else {
      var prevId = "#" + (firstIndex + 1),
          currId = "#" + (currIndex + 1);
    }
    $(prevId).removeClass("is-selected");
    $(currId).addClass("is-selected");
  }

  // handle click for next icon on carousel
  $('.next-icon').on("click", function() {
    $($(".slide")[currIndex]).hide();
    slideForward();
    updateActiveDot("forward");
  })

  // edge case for next slide when on last slide
  function slideForward() {
    if (currIndex == lastIndex) {
      currIndex = 0;
    } else {
      currIndex += 1;
    }
    $($(".slide")[currIndex]).css("display", "inline-block");
  }

  // handle click for previous icon on carousel
  $('.previous-icon').on("click", function() {
    $($(".slide")[currIndex]).hide();
    slideBackward();
    updateActiveDot("backward");
  })

  // edge case for previous slide when on first slide
  function slideBackward() {
    if (currIndex == 0) {
      currIndex = slides.length - 1;
    } else {
      currIndex -= 1;
    }
    $($(".slide")[currIndex]).css("display", "inline-block");
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

