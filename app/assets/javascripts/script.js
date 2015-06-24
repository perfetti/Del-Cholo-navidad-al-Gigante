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

  if ($(document).scrollTop() > 10) {
    $('#nav').addClass('shrink');
    $('.scrollchange').removeClass('navhome').addClass('navhomescroll');
    
  } else {
    $('#nav').removeClass('shrink');
     $('.scrollchange').removeClass('navhomescroll').addClass('navhome');

    
  };
});

  
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
    quote: "El buen gobierno no es el que lo hace todo, sino el que le da a todos la posibilidad de hacer. No es el que produce, sino el que estimula la producción."
}, {
    quote: "Así como defiendo la igualdad de oportunidades para aprender, defiendo también la igualdad de oportunidades para emprender."
}, {
    quote: "El buen gobierno es el que contribuye a crear riqueza, no el que quiere quedarse con la riqueza del país. "
}, {
  quote: "Investigación, Innovación, Ciencia, Tecnología: todo eso es Conocimiento. Esa es y será cada vez más la frontera que separe a los países prósperos y avanzados de los países atrasados. "
}, {
    quote: "Hoy más que nunca, hay que tener un gobierno de gente honesta y responsable, no de agitadores ni de amigos de lo ajeno." 
}, {
    quote: "Nuestros enemigos son el miedo, la desigualdad, la pobreza, la inseguridad, la injusticia y la corrupción."
}, {
    quote: "Me comprometo a reconstruir la unidad de la sociedad argentina. Conmigo no habrá buenos y malos argentinos, sólo ciudadanos libres e iguales ante la ley."
}, {
    quote: "Somos los que tenemos  que construir una nueva mayoría política y liderar este cambio de época que la Argentina necesita para volver a ser un país próspero, justo, decente, confiable y respetado."
}, {
  quote:"Hoy el plan más urgente es garantizar a todos, emprendedores, empleadores y productores, que puedan realizar su actividad sin que el gobierno los moleste con trabas, con burocracias, con impuestos y con mentiras. " 
}, {
    quote: "En 2015 no habrá un ballotage entre dos nombres, sino entre dos culturas políticas: la del populismo o la de la República democrática. "
    
}];

var randomQuote = Math.floor(Math.random() * myQuotes.length)

$('p', '#randomquote').text(myQuotes[randomQuote].quote);


});












 







