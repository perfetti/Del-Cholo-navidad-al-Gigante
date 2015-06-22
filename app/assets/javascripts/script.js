$(document).ready(function(){


$(window).load(function(){

        $('.completeForm').modal('show');
    });
/* affix the navbar after scroll below header */
$('#nav').affix({
      offset: {
        top: $('.header').height()+$('#nav').height()
      }
});	

/* highlight the top nav as scrolling occurs */
$('body').scrollspy({ target: '#nav' })

/* smooth scrolling for scroll to top */
$('.scroll-top').click(function(){
  $('body,html').animate({scrollTop:0},1000);
});

/* smooth scrolling for nav sections */
$('#nav .navbar-nav li>a').click(function(){
  var link = $(this).attr('href');
  var posi = $(link).offset().top;
  $('body,html').animate({scrollTop:posi},700);
});


/* Navbar shrink on scroll*/
$(window).scroll(function() {
    $(".homeBTN").hover(
      function(){
      $(this).attr("src","assets/images/homebtn.png");
    },
      function(){
        $('.homeBTN').attr("src", "assets/images/sanzPresidente.png");
      });

  if ($(document).scrollTop() > 10) {
    $('#nav').addClass('shrink');
    $('.homeBTN').attr("src", "assets/images/sanzPresidenteSmall.png").css({ "margin-bottom": "0px"});
    $(".homeBTN").hover(
      function(){
      $(this).attr("src","assets/images/homebtnsmall.png");
    },
      function(){
        $('.homeBTN').attr("src", "assets/images/sanzPresidenteSmall.png");
      });

    
  } else {
    $('#nav').removeClass('shrink');
      $('.homeBTN').attr("src", "assets/images/sanzPresidente.png").css({ "margin-bottom": "-90px"});
    $(".homeBTN").hover(
      function(){
      $(this).attr("src","assets/images/homebtn.png");
    },
      function(){
        $('.homeBTN').attr("src", "assets/images/sanzPresidente.png");
      });

    
  };
});

// $(".homeBTN").hover(
//   function(){
//   $(this).attr("src","assets/images/homebtn.png");
// },
//   function(){
//     $(this).attr("src", "assets/images/sanzPresidente.png");
//   });

  
  $('.standard').hover(
    function(){
      var modal_path = $(this).find('.caption').attr('modal-name')
      $(this).find('.caption').show();
      $(this).click(function(event) {
      $(modal_path).modal('show');
      });
    },
    function(){
      $(this).find('.caption').hide();
    }
  );
  

  /* Random quote generator */
  var myQuotes = [{
    quote: "To err is human; to forgive, divine."
}, {
    quote: "Reports of my death have been greatly exaggerated."
}, {
    quote: "A line of oversize watches that can offer many of the attributes of premium luxury watches at an affordable price."
    
}];

var randomQuote = Math.floor(Math.random() * myQuotes.length)

$('p', '#randomquote').text(myQuotes[randomQuote].quote);


  $('.llachmap').hover(function(){

      $(this).find('.SanzLlachDer2').show();

    },
    function(){
      $(this).find('.SanzLlachDer2').hide();
    });



});


