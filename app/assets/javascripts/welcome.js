$( document ).ready(function() {


  var currentSlide = 0;

  $(".next").on("click", function() {
		console.log('hello');
    $($(".slide")[currentSlide]).hide();
    nextSlide(true);
  })

  $(".previous").on("click", function() {
		console.log('hello');
    $($(".book")[currentSlide]).hide();
    nextSlide(false);
  })

  function nextSlide(canMoveForward) {
    if (canMoveForward == true && currentSlide == $('.slide').length - 1){
      currentSlide = 0;
    } else if (canMoveForward == false && currentSlide == 0){
      currentSlide = $('.slide').length - 1;
    } else if (canMoveForward == true){
      currentSlide += 1;
    } else if (canMoveForward == false) {
      currentSlide -= 1;
    }
    $($('.slide')[currentSlide]).show();
  };

});
