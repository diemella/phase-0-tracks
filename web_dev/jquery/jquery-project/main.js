$(document).ready (function(){

  $(".next").click(function(){

    var currentImg = $(".active");
    var nextImg = currentImg.next();

  //   if(nextImg.length){
  //     currentImg.removeClass("active").css("z-index", -1);
  //     nextImg.addClass("active").css("z-index", 1);
  //   }

    if(nextImg.length === 0){
      nextImg = $(".inner img:first");
      currentImg.removeClass("active").css("z-index", -1);
      nextImg.addClass("active").css("z-index", 1);
    } else {
      currentImg.removeClass("active").css("z-index", -1);
      nextImg.addClass("active").css("z-index", 1);
    }

  });

    $(".previous").click(function(){

    var currentImg = $(".active");
    var previousImg = currentImg.prev();

    // if(previousImg.length){
    //   currentImg.removeClass("active").css("z-index", -1);
    //   previousImg.addClass("active").css("z-index", 1);
    // }

    if(previousImg.length === 0){
      previousImg = $(".inner img:last");
      currentImg.removeClass("active").css("z-index", -1);
      previousImg.addClass("active").css("z-index", 1);
    } else {
      currentImg.removeClass("active").css("z-index", -1);
      previousImg.addClass("active").css("z-index", 1);
    }

  });

});