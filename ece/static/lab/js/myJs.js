$(document).ready(function(){

    var startSlider = function() {
            $("#slider1").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "centered-btns"
            });
            };

    startSlider();
    $(".research_head").click(function(){
        //$(".reseach_dropdown").css('display','none');
        $(this).next().toggleClass('showResearch');
    });
    

    
          });
