# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# biglions
function nextSlide(){
    if(slideNow == slideCount || slideNow <= 0 || slideNow > slideCount){
      $('.slidewrapper').css('transform','translate(0,0)');
      slideNow = 1
      $('.nav-btn').last().removeClass('active');
      $('.nav-btn').first().addClass('active');
      if($('.navigation').width() > $(window).width()){
        
        translateDelta = 0;
        $('.navigation').css('transform','translateX(0)');
      }
    }else{
      
      translateWidth = -$('.viewport').width() * slideNow;
      $('.slidewrapper').finish().css({
         'transform': 'translate(' + translateWidth + 'px, 0)',
         '-webkit-transform': 'translate(' + translateWidth + 'px, 0)',
         '-ms-transform': 'translate(' + translateWidth + 'px, 0)'
       });
      $('.btn' + slideNow).removeClass('active');
      slideNow++;
      if(window.location.pathname == '/'){
        clearInterval(switchInterval);
        switchInterval = setInterval(nextSlide,slideInterval);
      }
      $('.btn' + slideNow).addClass('active');
      if($('.navigation').width() > $(window).width()){
        
        
        btnMiddlePosition = $('.nav-btn.active').offset().left + ($('.nav-btn.active').width() / 2);
        if(delta >= Math.abs($('.navigation').offset().left) && btnMiddlePosition > middleWindow){
          delta2 = delta - Math.abs($('.navigation').offset().left);
          if((btnMiddlePosition - middleWindow) > delta2){
            translateDelta -= delta2;
          }else{
            translateDelta -= (btnMiddlePosition - middleWindow);
          }
            $('.navigation').css({
            'transform': 'translate(' + translateDelta + 'px, 0)',
            '-webkit-transform': 'translate(' + translateDelta + 'px, 0)',
            '-ms-transform': 'translate(' + translateDelta + 'px, 0)'
          })
        }
      }
    }
  }
  function prevSlide(){
    if(slideNow <= 1){
      $('.btn' + slideNow).removeClass('active');
      
      slideNow = slideCount;
      translateWidth = -$('.viewport').width() * (slideNow - 1);
      $('.slidewrapper').css({
         'transform': 'translate(' + translateWidth + 'px, 0)',
         '-webkit-transform': 'translate(' + translateWidth + 'px, 0)',
         '-ms-transform': 'translate(' + translateWidth + 'px, 0)'
       });
      $('.btn' + slideNow).addClass('active');
      if($('.navigation').width() > $(window).width()){
        $('.navigation').css('transform','translateX(' + -delta + 'px)');
        translateDelta = -delta;
      } 
      
    }else{
      $('.btn' + slideNow).removeClass('active');
     
      slideNow--;
      translateWidth = -$('.viewport').width() * (slideNow - 1);
      $('.slidewrapper').css({
         'transform': 'translate(' + translateWidth + 'px, 0)',
         '-webkit-transform': 'translate(' + translateWidth + 'px, 0)',
         '-ms-transform': 'translate(' + translateWidth + 'px, 0)'
       });
      $('.btn' + slideNow).addClass('active');
      if($('.navigation').width() > $(window).width()){
        btnMiddlePosition = $('.nav-btn.active').offset().left + ($('.nav-btn.active').width() / 2);
        if(Math.abs($('.navigation').offset().left) > 0 && btnMiddlePosition < middleWindow){
          if((middleWindow - btnMiddlePosition) > Math.abs($('.navigation').offset().left)){
            translateDelta += Math.abs($('.navigation').offset().left);
          }else{
            translateDelta += (middleWindow - btnMiddlePosition);
          }
          $('.navigation').css({
           'transform': 'translate(' + translateDelta + 'px, 0)',
           '-webkit-transform': 'translate(' + translateDelta + 'px, 0)',
           '-ms-transform': 'translate(' + translateDelta + 'px, 0)'
          })
        }
      }
      
    }
  }