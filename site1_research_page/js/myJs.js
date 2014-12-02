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
    
    
    //infoblock_ul = $(".listlevel1:nth-child(0)");
    var col1 = $(".box1");
    var col2 = $(".box2");
    var col3 = $(".box3");
    var max_col_ht = col1.height();
    if(col2.height() > max_col_ht){
        max_col_ht = col2.height();
    }
    if(col3.height() > max_col_ht){
        max_col_ht = col3.height();
    }
    console.log(max_col_ht);
    console.log(col1.height());
    console.log(col2.height());
    console.log(col3.height());
//    col1.css("height",""+max_col_ht+" !important");
//    col2.css("height",""+max_col_ht + " !important");
//    col3.css("height",""+max_col_ht + " !important");
    col1.height(max_col_ht);
    col2.height(max_col_ht);
    col3.height(max_col_ht);
    
          });
