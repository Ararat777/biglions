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

$(document).ready(function(){
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
  var slideNow = 1
  var translateWidth = 0;
  if(window.location.pathname == '/'){
    var slideInterval = 10000;
    var switchInterval = setInterval(nextSlide,slideInterval);
  }
  $('.nav-btn').first().addClass('active');
  function nextSlide(){
    if(slideNow == slideCount || slideNow <= 0 || slideNow > slideCount){
      $('.slidewrapper').css('transform','translate(0,0)');
      slideNow = 1
      $('.nav-btn').last().removeClass('active');
      $('.nav-btn').first().addClass('active');
    }else{
      
      translateWidth = -$('.viewport').width() * slideNow;
      $('.slidewrapper').css({
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
      
    }
  }
  
  $('.nav-btn').on("click",function(){
     var barNumber = +$(this).data('number');
     if(barNumber != slideNow){
       translateWidth = -$('.viewport').width() * (barNumber - 1);
       $('.slidewrapper').css({
         'transform': 'translate(' + translateWidth + 'px, 0)',
         '-webkit-transform': 'translate(' + translateWidth + 'px, 0)',
         '-ms-transform': 'translate(' + translateWidth + 'px, 0)'
       });
       $('.btn' + slideNow).removeClass('active');
       slideNow = barNumber;
       if(window.location.pathname == '/'){
         clearInterval(switchInterval);
         switchInterval = setInterval(nextSlide,slideInterval);
       }
       $('.btn' + slideNow).addClass('active');
     }
    
  });
  $('.arrow').on("click", function(){
    if($(this).data("slide") == 'next'){
      nextSlide();
    }else{
      prevSlide();
    }
  });
  
 $('.modal-btn').on("click",function(){
    $('.modal_box').fadeIn();
  })
  $(window).on("click",function(event){
    if(event.target.className == 'modal_box'){
      $('.modal_box').fadeOut();
    }
  })
  if(window.location.hash){
    var anchor = window.location.hash
    window.location.hash = ''
    var barNumber = +$(anchor).data("number");
    translateWidth = -$('.viewport').width() * (barNumber - 1);
    $('.slidewrapper').css({
         'transform': 'translate(' + translateWidth + 'px, 0)',
         '-webkit-transform': 'translate(' + translateWidth + 'px, 0)',
         '-ms-transform': 'translate(' + translateWidth + 'px, 0)'
    });
    $('.btn' + slideNow).removeClass('active');
    
    slideNow = barNumber;
    $('.btn' + slideNow).addClass('active');
    
    
  }
  
 
  
  
});


