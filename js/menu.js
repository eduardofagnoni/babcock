
$(window).scroll(function() {
    var height = $(window).scrollTop();
    /*menu*/
    if(height  < 50) {
        $('.barra-menu').css('background-color','transparent').css('position','fixed').css('padding','13px 0').css('-webkit-transition','0.3s ease-in-out').css('-moz-transition','0.3s ease-in-out').css('-o-transition','0.3s ease-in-out').css('transition','0.3s ease-in-out');  
        $('.logoMenor').css('display','none');
        $('.logoMaior').css('display','block');

        $('header .barra-menu button').css('top','40px');
    }
    if(height  > 50) {
        $('.barra-menu').css('background-color','#004094').css('position','fixed').css('padding','40px 0 10px 0').css('-webkit-transition','0.3s ease-in-out').css('-moz-transition','0.3s ease-in-out').css('-o-transition','0.3s ease-in-out').css('transition','0.3s ease-in-out');
        $('.logoMenor').css('display','block');
        $('.logoMaior').css('display','none');   
        
        $('header .barra-menu button').css('top','-10px');
    }
    /*menu*/
});



(function() {

    "use strict";

    var toggles = document.querySelectorAll(".c-hamburger");

    for (var i = toggles.length - 1; i >= 0; i--) {
    var toggle = toggles[i];
    toggleHandler(toggle);
    };

    function toggleHandler(toggle) {
    toggle.addEventListener( "click", function(e) {
        e.preventDefault();
        (this.classList.contains("is-active") === true) ? this.classList.remove("is-active") : this.classList.add("is-active");
        (this.classList.contains("is-active") === true) ? abreMenu() : fechaMenu();        
    });
    }

})();

    /*******************************************************************
    Funções abre e fecha telas de Menu
    *******************************************************************/
    function abreMenu() {        
        $("nav#menu-principal").animate({left:"0", opacity:"show" }, 400);

        $("#id-home").delay(500).animate({top:"0", opacity:"show" }, 400);
        $("#id-a-babcock").delay(550).animate({top:"0", opacity:"show" }, 400);
        $("#id-o-que-fazemos").delay(600).animate({top:"0", opacity:"show" }, 400);
        $("#id-onde-fazemos").delay(650).animate({top:"0", opacity:"show" }, 400);
        $("#id-como-fazemos").delay(700).animate({top:"0", opacity:"show" }, 400);
        $("#id-responsabilidade").delay(750).animate({top:"0", opacity:"show" }, 400);
        $("#id-novidades").delay(800).animate({top:"0", opacity:"show" }, 400);
        $("#id-projetos").delay(850).animate({top:"0", opacity:"show" }, 400);
        $("#id-fale-conosco").delay(900).animate({top:"0", opacity:"show" }, 400);
        $("#id-linkdin, #id-linkdin a").delay(950).animate({top:"0", opacity:"show" }, 400);

        

        $("#id-mineracao").delay(600).animate({top:"0", opacity:"show" }, 400);
        $("#id-aeroportuaria").delay(650).animate({top:"0", opacity:"show" }, 400);
        $("#id-metalurgica").delay(700).animate({top:"0", opacity:"show" }, 400);
        $("#id-farmaceutica").delay(750).animate({top:"0", opacity:"show" }, 400);
        $("#id-automotiva").delay(800).animate({top:"0", opacity:"show" }, 400);
        $("#id-financeira").delay(850).animate({top:"0", opacity:"show" }, 400);
        $("#id-petroquimica").delay(900).animate({top:"0", opacity:"show" }, 400);
        $("#id-frota").delay(950).animate({top:"0", opacity:"show" }, 400);
        $("#id-papel-e-celulose").delay(1000).animate({top:"0", opacity:"show" }, 400);
        $("#id-energia").delay(1050).animate({top:"0", opacity:"show" }, 400);
        $("#id-defesa").delay(1100).animate({top:"0", opacity:"show" }, 400);
        $("#id-oleo-e-gas").delay(1150).animate({top:"0", opacity:"show" }, 400);
        $("#id-emergency").delay(1200).animate({top:"0", opacity:"show" }, 400);
        $("#id-portos").delay(1250).animate({top:"0", opacity:"show" }, 400);
        
    }

    function fechaMenu() {        
        $("nav#menu-principal").animate({left:"-100%", opacity:"hide" }, 400);

        $("#id-home").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-a-babcock").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-o-que-fazemos").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-onde-fazemos").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-como-fazemos").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-responsabilidade").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-novidades").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-projetos").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-fale-conosco").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-linkdin, #id-linkdin a").delay(100).animate({top:"-10px", opacity:"hide" }, 400);


        $("#id-mineracao").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-aeroportuaria").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-metalurgica").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-farmaceutica").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-automotiva").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-financeira").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-petroquimica").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-frota").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-papel-e-celulose").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-energia").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-defesa").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-oleo-e-gas").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-emergency").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
        $("#id-portos").delay(100).animate({top:"-10px", opacity:"hide" }, 400);
    }





    /*******************************************************************
    Funções Banner
    *******************************************************************/
    function banner_1() {
        $(".banner-1").animate({opacity:"show"},400);
        $(".banner-2").animate({opacity:"hide"},400);
        $(".banner-3").animate({opacity:"hide"},400);
        $("div.b1").addClass("active")
        $("div.b2").removeClass("active")
        $("div.b3").removeClass("active")
        
        $(".tit-banner-2").animate({bottom:"-100%", opacity:"hide"},400);
        $(".tit-banner-3").animate({bottom:"-100%", opacity:"hide"},400);
        $(".tit-banner-1").animate({bottom:"3px", opacity:"show"},400);
    }

    function banner_2() {
        $(".banner-1").animate({opacity:"hide"},400);
        $(".banner-2").animate({opacity:"show"},400);
        $(".banner-3").animate({opacity:"hide"},400);
        $("div.b1").removeClass("active")
        $("div.b2").addClass("active")
        $("div.b3").removeClass("active")

        $(".tit-banner-1").animate({bottom:"-100%", opacity:"hide"},400);
        $(".tit-banner-2").animate({bottom:"3px", opacity:"show"},400);
        $(".tit-banner-3").animate({bottom:"-100%", opacity:"hide"},400);
    }

    function banner_3() {
        $(".banner-1").animate({opacity:"hide"},400);
        $(".banner-2").animate({opacity:"hide"},400);
        $(".banner-3").animate({opacity:"show"},400);
        $("div.b1").removeClass("active")
        $("div.b2").removeClass("active")
        $("div.b3").addClass("active")

        $(".tit-banner-1").animate({bottom:"-100%", opacity:"hide"},400);
        $(".tit-banner-2").animate({bottom:"-100%", opacity:"hide"},400);
        $(".tit-banner-3").animate({bottom:"3px", opacity:"show"},400);
    }

