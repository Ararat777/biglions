// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require bootstrap-sprockets
//= require_tree .

$(window).on('load',function(){
  var screenWidth = $(window).width();
  function getDecimal(number){
    return number - parseInt(number);
  }
  
  $('.hamburger').on("click",function(){
    $('.overlay').addClass('visible');
  });
  $('.close-icon img').on("click",function(){
    $('.overlay').removeClass('visible');
  });
  var slideCount = $('.slidewrapper').children().length;
  $('.slidewrapper').css("width", (100 * slideCount) + '%');
 
  if(getDecimal(100 / slideCount).toString.length > 3){
    $('.slide-item').css("width", "calc(" + (100 / slideCount) + '% + 1px)');
  }else{
    $('.slide-item').css("width", (100 / slideCount) + '%');
  }
  var slideNow = 1;
  var translateWidth = 0;
  
  if($('.navigation').width() > $(window).width()){
    var translateDelta = 0;
    var delta = $('.navigation').width() - $(window).width();
    var delta2 = 0;
    var middleWindow = $(window).width() / 2;
    var btnMiddlePosition = 0;
    
  }
  if(window.location.pathname == '/'){
    var slideInterval = 10000;
    var switchInterval = setInterval(nextSlide,slideInterval);
  }
  $('.nav-btn').first().addClass('active');
  function nextSlide(){
    if(slideNow == slideCount || slideNow <= 0 || slideNow > slideCount){
      $('.slidewrapper').css('left','0');
      slideNow = 1
      $('.nav-btn').last().removeClass('active');
      $('.nav-btn').first().addClass('active');
      if($('.navigation').width() > $(window).width()){
        
        translateDelta = 0;
        $('.navigation').css('left','0');
      }
    }else{
      
      translateWidth = -$('.viewport').width() * slideNow;
      $('.slidewrapper').css({
         'left': translateWidth + 'px'
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
            'left': translateDelta + 'px'
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
         'left': translateWidth + 'px' 
       });
      $('.btn' + slideNow).addClass('active');
      if($('.navigation').width() > $(window).width()){
        $('.navigation').css('left', -delta + 'px');
        translateDelta = -delta;
      } 
      
    }else{
      $('.btn' + slideNow).removeClass('active');
     
      slideNow--;
      translateWidth = -$('.viewport').width() * (slideNow - 1);
      $('.slidewrapper').css({
         'left': translateWidth + 'px'
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
           'left': translateDelta + 'px'
          });
        }
      }
      
    }
  }
  $('.popup-image').magnificPopup({
		type: 'image',
		closeOnContentClick: true,
		closeBtnInside: false,
		fixedContentPos: true,
		mainClass: 'mfp-no-margins mfp-with-zoom', // class to remove default margin from left and right side
		image: {
			verticalFit: true
		},
		zoom: {
			enabled: true,
			duration: 300 // don't foget to change the duration also in CSS
		}
	});
  
  $('.nav-btn').on("click",function(){
     var barNumber = +$(this).data('number');
     if(barNumber != slideNow){
       translateWidth = -$('.viewport').width() * (barNumber - 1);
       $('.slidewrapper').css({
         'left': translateWidth + 'px'
       });
       $('.btn' + slideNow).removeClass('active');
       slideNow = barNumber;
       if(window.location.pathname == '/'){
         clearInterval(switchInterval);
         switchInterval = setInterval(nextSlide,slideInterval);
       }
       $('.btn' + slideNow).addClass('active');
     }
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
          'left': translateDelta + 'px'
        })
      }else if(Math.abs($('.navigation').offset().left) > 0 && btnMiddlePosition < middleWindow){
        if((middleWindow - btnMiddlePosition) > Math.abs($('.navigation').offset().left)){
          translateDelta += Math.abs($('.navigation').offset().left);
        }else{
          translateDelta += middleWindow - btnMiddlePosition;
        }
        $('.navigation').css({
         'left': translateDelta + 'px'
        })
      }
    }
    
  });
  $('.arrow').on("click", function(){
    if($(this).data("slide") == 'next'){
      nextSlide();
    }else{
      prevSlide();
    }
  });
  $('.slide-next').click(function(){
    nextSlide();
  });
  
 $('.modal-btn').on("click",function(){
    $('.modal_box').fadeIn();
  })
 $('.close-modal-form').on("click",function(){
    $('.modal_box').fadeOut();
  })
  $(window).on("click",function(event){
    if(event.target.className == 'modal_box' || event.target.className == 'bg'){
      $('.modal_box').fadeOut();
    }
  })
  
  if(window.location.hash){
    var anchor = window.location.hash
    window.location.hash = ''
    var barNumber = +$(anchor).data("number");
    translateWidth = -$('.viewport').width() * (barNumber - 1);
    $('.slidewrapper').css({
         'left': translateWidth + 'px'
    });
    $('.btn' + slideNow).removeClass('active');
    
    slideNow = barNumber;
    $('.btn' + slideNow).addClass('active');
    
    
  }
  
 $('.category-link').on('mouseenter',function(){
  
  $(this).children('.sub-categories-links-box').stop().slideDown();
 }).on('mouseleave',function(){
   $(this).children('.sub-categories-links-box').stop().slideUp();
 });
  
 $('.switch').on("click",function(){
   if($(this).hasClass("off")){
     $(this).parent().siblings('.answer').stop().slideDown();
     $(this).removeClass("off").addClass("on");
     $(this).find("img").attr("src","/assets/arrow-up.svg");
   }else{
     $(this).parent().siblings('.answer').stop().slideUp();
     $(this).removeClass("on").addClass("off");
     $(this).find("img").attr("src","/assets/arrow-down.svg");
   }
 })
 $('.question-row').on("click",function(){
   if($(this).children(".switch").hasClass("off")){
     $(this).siblings(".answer").stop().slideDown();
     $(this).children(".switch").removeClass("off").addClass("on");
     $(this).children(".switch").find("img").attr("src","/assets/arrow-up.svg");
   }else{
     $(this).siblings(".answer").stop().slideUp();
     $(this).children(".switch").removeClass("on").addClass("off");
     $(this).children(".switch").find("img").attr("src","/assets/arrow-down.svg");
   }
 })
 
 var currentInputValue = '';
  
 $(".gift.form-box input[type=text], .gift.form-box textarea").on("click",function(){
   currentInputValue = $(this).val();
 });
 $(".gift.form-box input[type=text],.gift.form-box textarea").on("input", function(){
   if($(this).val()){
     if(!currentInputValue){
       initialFillValue += 100;
       gauge1.update(initialFillValue);
     }
     currentInputValue = $(this).val();
     
   }else{
     initialFillValue -= 100;
     gauge1.update(initialFillValue);
     currentInputValue = $(this).val();
     
   }
   
 });
 $('.map-button').on("click",function(){
   $('.map-box').fadeIn();
 });
 $('.close-map').on("click",function(){
   $('.map-box').fadeOut();
 });
 
  if(window.location.pathname != '/'){
     $(window).on("mousewheel",function(e){
       
       if(!($(e.target).parents().hasClass("scroll-box")) && !($(e.target).parents().hasClass("questions-container")) && !($(e.target).parents().hasClass("statements-box"))){
        if(e.deltaY > 0){
          prevSlide();
        }else if(e.deltaY < 0){
          nextSlide();
        }
       }
     });
    $(window).on("keydown", function(event){
      if(event.which == 37){
        prevSlide();
      }else if(event.which == 39){
        nextSlide();
      }
      
    });
    $('.more-less-button').on("click",function(){
      if($(this).data("direct") == "more"){
        $('.indents-wrapper').css("transform","translateX(-50%)");
      }else{
        $('.indents-wrapper').css("transform","translateX(0%)");
      }
      
    })
    
  }
  if(screenWidth <= 768){
    $('.hamburger.mobile').on("click",function(){
      $('.overlay').slideToggle(500);
    })
    $('.caret-btn').on("click",function(){
      $(this).parent().siblings(".menu-item-box").slideToggle();
    })
  }
  /*Fix justify-box height for Safari Mac */
  $('.justify-box').each(function(){
    var parentBlockHeight = $(this).parent().css("height");
    $(this).css("height",parentBlockHeight);
  });
});


