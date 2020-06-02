/**
*	@name							mobilemenu
*	@descripton						This jQuery plugin makes creating mobilemenus pain free
*	@version						1.3
*	@requires						jQuery 1.2.6+
*
*	@author							Jan Jarfalk
*	@author-email					jan.jarfalk@unwrongest.com
*	@author-website					http://www.unwrongest.com
*
*	@licens							MIT License - http://www.opensource.org/licenses/mit-license.php
*/

(function(jQuery){
     jQuery.fn.extend({  
         mobilemenu: function() {       
            return this.each(function() {
            	
            	var jQueryul = jQuery(this);
            	
				if(jQueryul.data('accordiated'))
					return false;
													
				jQuery.each(jQueryul.find('ul, li>div'), function(){
					jQuery(this).data('accordiated', true);
					jQuery(this).hide();
				});
				
				jQuery.each(jQueryul.find('span.head'), function(){
					jQuery(this).click(function(e){
						activate(this);
						return void(0);
					});
				});
				
				var active = (location.hash)?jQuery(this).find('a[href=' + location.hash + ']')[0]:'';

				if(active){
					activate(active, 'toggle');
					jQuery(active).parents().show();
				}
				
				function activate(el,effect){
					jQuery(el).parent('li').toggleClass('active').siblings().removeClass('active').children('ul, div').slideUp('fast');
					jQuery(el).siblings('ul, div')[(effect || 'slideToggle')]((!effect)?'fast':null);
				}
				
            });
        } 
    }); 
})(jQuery);

jQuery(document).ready(function () {
	
	jQuery("ul.mobilemenu li.parent").each(function(){
        jQuery(this).append('<span class="head"><a href="javascript:void(0)"></a></span>');
      });
	
	jQuery('ul.mobilemenu').mobilemenu();
	
	jQuery("ul.mobilemenu li.active").each(function(){
		jQuery(this).children().next("ul").css('display', 'block');
	});
    
	//mobile
	jQuery('.btn-navbar').click(function() {
		
		var chk = 0;
		if ( jQuery('#navbar-inner').hasClass('navbar-inactive') && ( chk==0 ) ) {
			jQuery('#navbar-inner').removeClass('navbar-inactive');
			jQuery('#navbar-inner').addClass('navbar-active');
			jQuery('#ma-mobilemenu').css('display','block');
			chk = 1;
		}
		if (jQuery('#navbar-inner').hasClass('navbar-active') && ( chk==0 ) ) {
			jQuery('#navbar-inner').removeClass('navbar-active');
			jQuery('#navbar-inner').addClass('navbar-inactive');			
			jQuery('#ma-mobilemenu').css('display','none');
			chk = 1;
		}
		//jQuery('#ma-mobilemenu').slideToggle();
	});    
    
});