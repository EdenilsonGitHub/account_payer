export default home();

function home() {
    $(document).ready(function() {
        $(".menu-icon").on("click", function() {
              $("nav ul").toggleClass("showing");
        });
    });
    
    // Scrolling Effect
    
    $(window).on("scroll", function() {
        if($(window).scrollTop()) {
            $('nav').addClass('black');
            $('nav').addClass('border_header');
            $('.fundo_logo').addClass('fundo_logo_border_topo');
        } else {
            $('nav').removeClass('black');
            $('nav').removeClass('border_header');
            $('.fundo_logo').removeClass('fundo_logo_border_topo');
        }
    })
}