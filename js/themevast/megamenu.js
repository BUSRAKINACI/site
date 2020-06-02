
jQuery(document).ready(function($){

  (function(selector){

    var $nav = $(selector);
    var $megamenu  = $('.megamenu', $nav);
    var effect = MEGAMENU_EFFECT; 
    $megamenu.hover(function(){
       /*show popup to calculate*/
       //$(this).find('.dropdown').css('display','inline-block');
       
       /* get total padding + border + margin of the popup */
       var extraWidth       = 0
       var wrapWidthPopup   = $(this).find('.dropdown').outerWidth(true); /*include padding + margin + border*/
       var actualWidthPopup = $(this).find('.dropdown').width(); /*no padding, margin, border*/
       extraWidth           = wrapWidthPopup - actualWidthPopup;    
       
       /* calculate new width of the popup*/
       var widthblock1 = $(this).find('.dropdown .block1').outerWidth(true);
       var widthblock2 = $(this).find('.dropdown .block2').outerWidth(true);
       var new_width_popup = 0;
       if(widthblock1 && !widthblock2){
           new_width_popup = widthblock1;
       }
       if(!widthblock1 && widthblock2){
           new_width_popup = widthblock2;
       }
       if(widthblock1 && widthblock2){
            if(widthblock1 >= widthblock2){
                new_width_popup = widthblock1;
            }
            if(widthblock1 < widthblock2){
                new_width_popup = widthblock2;
            }
       }
       var new_outer_width_popup = new_width_popup + extraWidth;
       
       /*define top and left of the popup*/
       var wraper = $nav;
       var wWraper = wraper.outerWidth();
       var posWraper = wraper.offset();
       var pos = $(this).offset();
       
       //var xTop = pos.top - posWraper.top + MEGAMENU_OFFSET;
       var xLeft = pos.left - posWraper.left;
       if ((xLeft + new_outer_width_popup) > wWraper) xLeft = wWraper - new_outer_width_popup;

       //$(this).find('.dropdown').css('top',xTop);
       $(this).find('.dropdown').css('left',xLeft);
       
       /*set new width popup*/
       $(this).find('.dropdown').css('width',new_width_popup);
       $(this).find('.dropdown .block1').css('width',new_width_popup);
       
       /*return popup display none*/
       //$(this).find('.dropdown').css('display','none');
       
       /* Effect dropdown */
    //    if(effect == 0) $(this).find('.dropdown').stop(true,true).slideDown('slow')
    //    if(effect == 1) $(this).find('.dropdown').stop(true,true).fadeIn('slow');
    //    if(effect == 2) $(this).find('.dropdown').stop(true,true).show('slow');
    //},function(){
    //    if(effect == 0) $(this).find('.dropdown').stop(true,true).slideUp();
    //    if(effect == 1) $(this).find('.dropdown').stop(true,true).fadeOut('slow');
    //    if(effect == 2) $(this).find('.dropdown').stop(true,true).hide('fast');
    })

    //$('.dropdown', $megamenu).hover(function() {$(this).show();}, function() {$(this).hide();});

    $("#megamenu_link ul li").each(function(){
        var url = document.URL;
        $("#megamenu_link ul li a").removeClass("act");
        $('#megamenu_link ul li a[href="'+url+'"]').addClass('act');
    }); 
    
    $('.megamenu_no_child').hover(function(){
        $(this).addClass("active");
    },function(){
        $(this).removeClass("active");
    })
    
    $('.megamenu').hover(function(){
        if($(this).attr("id") != "megamenu_link"){
            $(this).addClass("active");
        }
    },function(){
        $(this).removeClass("active");
    })

  })('#nav_megamenu');
});

