//<![CDATA[ 


function getConfigAjaxCart()
{
    var baseUrl = getBaseUrl();
    settings = {
        'baseUrl' : baseUrl,
        'flyToCart' : false,
        'loading_bg': '#000',
        'loading_image' : '',
        'opacity' : '0.7',
    }
    return settings;
}

function getBaseUrl()
{
    var protocol = window.location.protocol;
    var domain = Mage.Cookies.domain.substr(1);
    var path = '/';
    if(Mage.Cookies.path != path) path = Mage.Cookies.path +'/';
    var baseUrl = protocol + '//' + domain + path;   // http://domain.com/ or / https://domain.com/magento/
    return baseUrl;
}

function addCartOnListProduct() {
    var isList = isCategoryPage();
    if(!isList) return;
    jQuery('button.btn-cart').each(function(){
        var linkToCart = jQuery(this).attr('onclick');
        var effectToCart = getConfigAjaxCart();
        if(linkToCart){
            linkToCart = linkToCart.replace("setLocation('","").replace("')","");
            jQuery(this).removeAttr('onclick')
            jQuery(this).live('click',function(){
                if(linkToCart.search('checkout/cart/add')!= -1 || linkToCart.search('ajaxcart/ajaxcart/add') !=-1) {
                    linkToCart =  linkToCart.replace('checkout/cart', 'ajaxcart/ajaxcart');
                    var qty = jQuery(this).parent().children('.qty').val();
                    var data = 'qty='+ qty;
                    ajaxToCart(linkToCart,data,jQuery(this));
                    var img = jQuery(this).closest('li').find('img:first');
                    var objproduct = jQuery(this);
                    if(!img.length) {
                        findImagesPorudct(objproduct);
                    }
                    if(effectToCart.flyToCart) {
                        flyToCart(jQuery(img), jQuery('.top-link-cart'));
                    }

                } else {
                    location.href = linkToCart; 
                    return false;
                }
            });
        }
    });
}

function isCategoryPage(){
    var is_view = jQuery('#product_addtocart_form').attr('method');
    var is_list_compare = jQuery('body.catalog-product-compare-index').length;
    var is_checkout_page = jQuery('body.checkout-cart-index').length;
    var is_wishlist_page = jQuery('body.wishlist-index-index').length;
    var wishlist_view_form = jQuery('.wishlist-index-index #wishlist-view-form').attr('action');

    if(is_view || is_list_compare || is_checkout_page || is_wishlist_page || typeof wishlist_view_form != "undefined") return false;
    else return true;
}
function addCartOnDetail() {
    var is_view = jQuery('#product_addtocart_form').attr('method');
    var effect_to_cart = getConfigAjaxCart();
    if(is_view) {
        productAddToCartForm.submit = function(button,url){
            if(this.validator && this.validator.validate()){
                var form = this.form;
                var oldUrl = form.action;
                var e = null;
                if (url) form.action = url;
                if(!url) url = jQuery('#product_addtocart_form').attr('action');
                var data = jQuery('#product_addtocart_form').serialize();
                
                if(effect_to_cart.flyToCart) {
                    var img = jQuery('#product_addtocart_form').find('.product-img-box .product-image img');
                    if(jQuery('#ajaxcart_product_view').attr('class')!='popup') flyToCart(jQuery(img), jQuery('.top-link-cart'));
                }
                
                var fileInput = jQuery('#product_addtocart_form input[type="file"]');
                if(fileInput.length>0) var file = fileInput[0].files[0];
                
                if(!file) {
                    ajaxToCart(url,data,'view');
                } else {
                    form.submit();
                }
                //End ajax code
                this.form.action = oldUrl;
                if (e) {
                    throw e;
                }
            }
            return false;
        }
    }
}

function findImagesPorudct(product){
    var objectParent = product.closest('.actions').parent();
    var img = objectParent.find('.product-image');
    if(!img.length){
        objectParent = objectParent.parent();
        img = objectParent.find('.product-image');
    }
    if(!img.length){
        objectParent = objectParent.parent();
        img = objectParent.find('.product-image');
    }
    if(!img.length){
        objectParent = product.parent().parent().parent().parent().parent();
        img = objectParent.find('.product-image');
    }
    if(!img.length){
        objectParent = objectParent.parent();
        img = objectParent.find('.product-image');
    }
    if(!img.length){
        objectParent = objectParent.parent();
        img = objectParent.find('.product-image');
    }
    if(!img.length){
        objectParent = objectParent.parent();
        img = objectParent.find('.product-image');
    }
    if(!img.length){
        objectParent = objectParent.parent();
        img = objectParent.find('.product-image');
    }
    return img;
}

function getProductFromCart(linkToCart) {
    
    jQuery.ajax({
        url: linkToCart,
        type: 'GET',
        data: {},
        beforeSend: function(){
            loadingAjaxcart(true);
        },
        success: function(data) {
            loadingAjaxcart(false);
            var htmlObject = jQuery(data);
            var formCart = htmlObject.find('.main-container').html();
            //console.log(formCart);
            showProductOption(formCart);
            return false;
        }
    });
}

//wishlist product
function addCartFromWishlist() {
      jQuery('li .link-cart').each(function(){
        var addToCartWishlistUrl = jQuery(this).attr('href');
        jQuery(this).bind('click',function(){
                ajaxToCart(addToCartWishlistUrl,'','');
            return false;
        });
    });
}

function loadingAjaxcart(show){
    var wraperLoading = jQuery('#wraper_ajax');
    if(show){
        wraperLoading.show(); 
        wraperLoading.click(function() {
            wraperLoading.hide();
        });
        wraperLoading.click(function() {
            wraperLoading.hide();
        });     
    }else {
        wraperLoading.hide();
    }

}

function showBoxInfo(product_info) {
    var inboxCart = jQuery('.wrapper_inboxCart');
    var inboxLoading = jQuery('#wraper_ajax');
    inboxLoading.hide();
    inboxCart.html(product_info).show().delay(3000).fadeOut();
    jQuery('.continue_shopping', inboxCart).click(function() {
        inboxCart.hide();
    }); 
    jQuery('body').children('.wrapper').click(function() {
        inboxCart.hide();
    });       
}

function insertContentToParent(element,data) {
     $$('.sidebar .block-cart').each(function (el){
        el.replace(data);
    });
    return false;
}

function insertContentTopLinkToParent(element,data) {
     $$(element).each(function (el){
        el.replace(data);
    });
    return false;
}



function ajaxToCart(url,data,mine) {
    url = url.replace(/http[^:]*:/, document.location.protocol);
    url = url.replace('checkout/cart', 'ajaxcart/ajaxcart');
    try {
        jQuery.ajax({
            url: url,
            dataType: 'json',
            type : 'post',
            data : data,
            beforeSend: function(){ loadingAjaxcart(true); },
            success: function(data){
                loadingAjaxcart(false);
                if(data.status==1) {

                    if(data.sidebar_cart) {
                        $$('.sidebar .block-cart').each(function (el){
                            el.replace(data.sidebar_cart);
                        });
                        if(mine=='view') {
                             if(jQuery('#ajaxcart_product_view').attr('class')=='popup') {
                                 window.parent.insertContentToParent('.sidebar .block-cart',data.sidebar_cart);
                                 window.parent.removeCartInSidebar();        
                            }
                        }
                    }
                    if(data.top_link){
                        var topCartContent =    jQuery(data.top_link).find('.top-link-cart').html();
                        jQuery('.top-link-cart').html('');
                        jQuery('.top-link-cart').html(topCartContent);
                        if(mine=='view') {
                             if(jQuery('#ajaxcart_product_view').attr('class')=='popup') {
                                window.parent.insertContentTopLinkToParent('.quick-access ul.links',data.top_link);
                             }
                        }
                    }
                    //show minicart
                    if(data.mini_cart) {
                        jQuery('#mini_cart_block').html('');
                        jQuery('#mini_cart_block').html(data.mini_cart);
						if(mine=='view') {
                             
                                parent.jQuery('#mini_cart_block').html(data.mini_cart);
                             
                        }
                    }
                    
                    if(data.checkout_cart){
                        jQuery('.col-main .cart').html('');
                        jQuery('.col-main .cart').append(data.checkout_cart);
                    }  

                    if(data.product_info) {
                        showBoxInfo(data.product_info);
                    }else {
                        loadingAjaxcart(false);
                    }
                 
                } else { 
                  
                    if(data.status==0){ 
                        if(!confirm(data.message)){
                            loadingAjaxcart(false);
                            return false;
                        }
                    }
                    if(data.type_product_ajax==1){
                        url = url.replace('ajaxcart/ajaxcart', 'checkout/cart');
                        location.href = url;
                        return false;
                    }
                }
                removeCartInSidebar();
            return false;
            }
        });
    } catch (e) {
        alert('Have error ajaxcart here you checkout none ajax');
        url = url.replace('ajaxcart/ajaxcart', 'checkout/cart');
        setLocation(url);
    }
   
}


// remove product out of cart in checkout page
function removeCartInCheckoutPage(){ 
    jQuery('.checkout-cart-index a.btn-remove').removeAttr('onclick');
    jQuery(".checkout-cart-index a.btn-remove2,.checkout-cart-index a.btn-remove").click(function(event) {
        event.preventDefault();
        if(!confirm(ajaxCartCfg.removeConfirm)){
            return false;
        }
        var delUrl = jQuery(this).attr("href");
        delUrl = delUrl.replace(/http[^:]*:/, document.location.protocol);
        delUrl = delUrl.replace("checkout/cart/delete", "ajaxcart/ajaxcart/cartdelete");

        jQuery.ajax({
            url: delUrl,
            dataType: 'json',
            beforeSend:function(){
               loadingAjaxcart(true);
            },
            success: function(data) {
                loadingAjaxcart(false);
                jQuery('.topcart-mini-container').html(data.top_cart);
                var form = jQuery(data.form_cart).children('form').html(); //jQuery(data.form_cart).find('form');
                jQuery('.col-main .cart').children('form').html(form);
                removeCartInCheckoutPage();
            },
            complete: function(data) {
                getQuote();
                getDiscountCodes();
                slideEffectAjax();
            }
        });
        
    });
   
    return false;
}

function getDiscountCodes() {
    jQuery('#discount-coupon-form').attr('id','discount-coupon-form-ajax');
    var discountFormAjax = new VarienForm('discount-coupon-form-ajax');
    discountForm.submit = function (isRemove) {
        if (isRemove) {
            $('coupon_code').removeClassName('required-entry');
            $('remove-coupone').value = "1";
        } else {
            $('coupon_code').addClassName('required-entry');
            $('remove-coupone').value = "0";
        }
        return VarienForm.prototype.submit.bind(discountFormAjax)();
    }
}

function removeCartInSidebar() {
    var is_checkout_page = jQuery('.checkout-cart-index').length;
    if(is_checkout_page>0) return false;
    jQuery('#cart-sidebar a.btn-remove, #mini_cart_block a.btn-remove').each(function(){
        var delUrl = jQuery(this).attr('href');
        jQuery(this).attr('href','#');
        jQuery(this).attr('onclick','');
        if(delUrl.search('checkout/cart/delete')!=-1) {
            jQuery(this).live('click',function(){
                if(confirm(ajaxCartCfg.removeConfirm)){
                    jQuery(this).attr('onclick',ajaxToCart(delUrl,'','view'));
                };
                return false;
            });              
        }
    });
}  

function getQuote() {
    jQuery('#shipping-zip-form').attr('id','shipping-zip-form-ajax');
    var coShippingMethodFormAjax = new VarienForm('shipping-zip-form-ajax');
    coShippingMethodForm.submit = function () {
        var country = $F('country');
        var optionalZip = false;

        for (i=0; i < countriesWithOptionalZip.length; i++) {
            if (countriesWithOptionalZip[i] == country) {
                optionalZip = true;
            }
        }
        if (optionalZip) {
            $('postcode').removeClassName('required-entry');
        }
        else {
            $('postcode').addClassName('required-entry');
        }
        if (this.validator.validate()) {
            this.form.submit();
        }
        console.log(countriesWithOptionalZip.length);
    }.bind(coShippingMethodFormAjax);
}

// Effect function


function flyToCart(flyer, flyingTo, callBack) {
      try {
        var jQueryfunc = jQuery(this);
        var divider = 3;
        var flyerClone = jQuery(flyer).clone();
        jQuery(flyerClone).css({
            position: 'absolute',
            top: jQuery(flyer).offset().top + "px",
            left: jQuery(flyer).offset().left + "px",
            opacity: 1,
            'z-index': 1000
        });
        jQuery('body').append(jQuery(flyerClone));
        if(jQuery(flyingTo)) {
            var gotoX = jQuery(flyingTo).offset().left + (jQuery(flyingTo).width() / 2) - (jQuery(flyer).width()/divider)/2;
            var gotoY = jQuery(flyingTo).offset().top + (jQuery(flyingTo).height() / 2) - (jQuery(flyer).height()/divider)/2;
            jQuery(flyerClone).animate({
                opacity: 0.7,
                left: gotoX,
                top: gotoY,
                width: 135,
                height: 135
            }, 1000,
            function () {
                jQuery(flyingTo).fadeOut('slowly', function () {
                    jQuery(flyingTo).fadeIn('slowly', function () {
                        jQuery(flyerClone).fadeOut('slowly', function () {
                            jQuery(flyerClone).remove();
                            if( callBack != null ) {
                                callBack.apply(jQueryfunc);
                            }
                        });
                    });
                });
            });
        }
    
    } catch (exception) { 
    
    }    
}

function initAjaxcart()
{
    var config = getConfigAjaxCart();
    var loading_bg = config.loading_bg;
    var opacity = config.opacity;
    var loading_image = config.loading_image;
    var initBox  = '<div id ="wraper_ajax" class ="loadding_ajaxcart"><i class="fa fa-spinner fa-spin"></i></div>';
    initBox     += '<div style="display:none;" class="wrapper_inboxCart"></div>';
    jQuery('body').append(initBox);

    var checkout_url = jQuery('.top-link-checkout').attr('href')+'onepage';
    jQuery('.top-link-checkout').attr('href',checkout_url);

    /* init function */
    removeCartInSidebar();
    removeCartInCheckoutPage();
    addCartOnListProduct();
    addCartOnDetail();

    //hide mini cart on popup
    jQuery('.ajaxcart-index-productview #mini_cart_block').hide();
    //hover on mini cart 
}

function ajaxTooltipAfter(){
    jQuery('.button.btn-cart').attr('data-original-title',jQuery('button.btn-cart').attr('title'));
    jQuery('.link-wishlist').attr('data-original-title',jQuery('.link-wishlist').attr('title'));
    jQuery('a.view-detail').attr('data-original-title',jQuery('a.view-detail').attr('title'));
    jQuery('.link-compare').attr('data-original-title',jQuery('.link-compare').attr('title'));
    jQuery('.email-friend-a').attr('data-original-title',jQuery('.email-friend-a').attr('title'));
    jQuery('.brand_item').attr('data-original-title',jQuery('.brand_item').attr('title'));
    jQuery('button.btn-cart, .link-wishlist, .link-compare,.email-friend-a,.brand_item, a.view-detail').attr('rel', 'tooltip');
    jQuery("[rel=tooltip]").tooltip(); 
}

jQuery(document).ready(function(){
    // console.log(ajaxCartCfg.removeConfirm);

    initAjaxcart(); //
    jQuery(document).ajaxComplete(function(){
        jQuery('.ajaxcart-index-productview #mini_cart_block').hide();
        addCartOnListProduct();
        removeCartInSidebar();
        addCartFromWishlist();

    })
});

//]]>
