<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7]><html class="no-js ie6 oldie" lang="en"><![endif]-->
<!--[if IE 7]><html class="no-js ie7 oldie" lang="en"><![endif]-->
<!--[if IE 8]><html class="no-js ie8 oldie" lang="en"><![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
<head>
  <!-- v2.0.0 -->
  <meta charset="utf-8">
  <!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="keywords" content="Shopify Template" />
  <meta name="author" content="etheme.com">
  <!-- Social meta ================================================== -->
  

  <meta property="og:type" content="website">
  <meta property="og:title" content="Your Shopping Cart">
  <meta property="og:url" content="https://fashop-default.myshopify.com/cart">
  




<meta property="og:site_name" content="fashop-default">



  <meta name="twitter:card" content="summary">






  <title>Your Shopping Cart &ndash; fashop-default</title>
  
  <link rel="canonical" href="https://fashop-default.myshopify.com/cart" />
  
  <link rel="shortcut icon" href="img/favicon.png?14148761252695619991" type="image/x-icon" />
  
  
  	<script src="js/fonts.js?14148761252695619991" type="text/javascript"></script>
  
  
  <link href="css/slick.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />
<link href="css/slick-theme.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />
<link href="css/magnific-popup.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />

<link href="css/settings.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />

<link href="css/style.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />

  	<link href="css/style-override-fonts.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />

<link href="css/css-liquid.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />
<link href="css/stylefont.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />


  <script src="js/vendor.js?14148761252695619991" type="text/javascript"></script>

  <script src="js/jquery.cookie.js?14148761252695619991" type="text/javascript"></script>
  
  
  <script type="text/javascript">
//<![CDATA[
      var Shopify = Shopify || {};
      Shopify.shop = "fashop-default.myshopify.com";
      Shopify.theme = {"name":"Copy of Fashop Demo","id":163731404,"theme_store_id":null,"role":"main"};
      Shopify.theme.handle = 'null';
      Shopify.theme.style = {"id":null,"handle":null};

//]]>
</script><script type="text/javascript">
//<![CDATA[
    (function() {
      function asyncLoad() {
        var urls = ["js/spr.js?shop=fashop-default.myshopify.com"];
        for (var i = 0; i < urls.length; i++) {
          var s = document.createElement('script');
          s.type = 'text/javascript';
          s.async = true;
          s.src = urls[i];
          var x = document.getElementsByTagName('script')[0];
          x.parentNode.insertBefore(s, x);
        }
      };
      if(window.attachEvent) {
        window.attachEvent('onload', asyncLoad);
      } else {
        window.addEventListener('load', asyncLoad, false);
      }
    })();

//]]>
</script><script id="__st">
//<![CDATA[
var __st={"a":16375229,"offset":-14400,"reqid":"9efca9ae-9391-45d7-aaa8-3a4cab0ab31f","pageurl":"fashop-default.myshopify.com\/cart","t":"prospect","u":"f5e78bd52722"};
//]]>
</script><script src="js/shopify_stats.js?v=6" type="text/javascript" async="async"></script>
<meta id="shopify-digital-wallet" data-iframe-url="/16375229/digital_wallets/dialog" />

      <script type="text/javascript">
        
      window.ShopifyAnalytics = window.ShopifyAnalytics || {};
      window.ShopifyAnalytics.meta = window.ShopifyAnalytics.meta || {};
      window.ShopifyAnalytics.meta.currency = 'USD';
      var meta = {"page":{}};
      for (var attr in meta) {
        window.ShopifyAnalytics.meta[attr] = meta[attr];
      }
    
      </script>

      <script type="text/javascript">
        window.ShopifyAnalytics.merchantGoogleAnalytics = function() {
          
        };
      </script>

      <script type="text/javascript" class="analytics">
        
        

        (function () {
          var customDocumentWrite = function(content) {
            var jquery = null;

            if (window.jQuery) {
              jquery = window.jQuery;
            } else if (window.Checkout && window.Checkout.$) {
              jquery = window.Checkout.$;
            }

            if (jquery) {
              jquery('body').append(content);
            }
          };

          var trekkie = window.ShopifyAnalytics.lib = window.trekkie = window.trekkie || [];
          if (trekkie.integrations) {
            return;
          }
          trekkie.methods = [
            'identify',
            'page',
            'ready',
            'track',
            'trackForm',
            'trackLink'
          ];
          trekkie.factory = function(method) {
            return function() {
              var args = Array.prototype.slice.call(arguments);
              args.unshift(method);
              trekkie.push(args);
              return trekkie;
            };
          };
          for (var i = 0; i < trekkie.methods.length; i++) {
            var key = trekkie.methods[i];
            trekkie[key] = trekkie.factory(key);
          }
          trekkie.load = function(config) {
            trekkie.config = config;
            var script = document.createElement('script');
            script.type = 'text/javascript';
            script.onerror = function(e) {
              (new Image()).src = '//v.shopify.com/internal_errors/track?error=trekkie_load';
            };
            script.async = true;
            script.src = 'js/trekkie.storefront.min.js?v=2017.03.22.2';
            var first = document.getElementsByTagName('script')[0];
            first.parentNode.insertBefore(script, first);
          };
          trekkie.load(
            {"Trekkie":{"appName":"storefront","development":false,"defaultAttributes":{"shopId":16375229}},"Performance":{"navigationTimingApiMeasurementsEnabled":true,"navigationTimingApiMeasurementsSampleRate":0.1}}
          );

          var loaded = false;
          trekkie.ready(function() {
            if (loaded) return;
            loaded = true;

            window.ShopifyAnalytics.lib = window.trekkie;
            

            var originalDocumentWrite = document.write;
            document.write = customDocumentWrite;
            try { window.ShopifyAnalytics.merchantGoogleAnalytics.call(this); } catch(error) {};
            document.write = originalDocumentWrite;

            
        window.ShopifyAnalytics.lib.page(
          null,
          {}
        );
      
            
          });

          
      var eventsListenerScript = document.createElement('script');
      eventsListenerScript.async = true;
      eventsListenerScript.src = "js/shop_events_listener-0320d3eb7ceaecf62b48e0a1102174bde201a7230c8e40f7ef9f45401190ad6d.js";
      document.getElementsByTagName('head')[0].appendChild(eventsListenerScript);
    
        })();
      </script>
    


<script type="text/javascript">
//<![CDATA[
      window.ShopifyExperiments = window.ShopifyExperiments || {};
      window.ShopifyExperiments.digitalWallet = true;

//]]>
</script>

  <script src="js/option_selection-f3dd7ba25bddfb6b0fe9addc0cae11dc709eeb6a469ec7f66f49e3abc4ce8c81.js" type="text/javascript"></script>
  <script src="js/api.jquery-b90ee9a5604bc68b2f4a3af86b4551207834575e264152eac4822d0b60e0c0d5.js" type="text/javascript"></script>
  <script src="js/cart.api.js?14148761252695619991" type="text/javascript"></script>

  
  
  <style>
    /*Footer*/
    
    
    body.index .layout-4 .container:first-child,
    body.index .layout-0 .container:first-child {
      border-top: 1px solid #e5e5e5;
      padding-top: 60px;
    }
    footer .subscribe-box input {
      border: 1px solid #e5e5e5;
    }
    
    
    #fitImageInTheme .product__inside__image {
      overflow: hidden;
    }
    #fitImageInTheme .product__inside__image > a:first-child {
      display: flex;
      justify-content: center;
    }
    #fitImageInTheme .product__inside__image > a:first-child img {
      width: auto;
      height: 200px;
    }
    
    
    .breadcrumbs,
    #pageContent {
      visibility:hidden;
      -webkit-transition: opacity .4s ease-out;
      -moz-transition: opacity .4s ease-out;
      -o-transition: opacity .4s ease-out;
      transition: opacity .4s ease-out;
      opacity: 0; 
    }
    .breadcrumbs.show,
    #pageContent.show {
      opacity: 1;
      visibility: visible;
    }
    
  </style>
  <script>
    (function(e) {
      var msg = 'Use Demo with';
      var msg2 = 'Disable';
      var str = '<link href="css/style-rtl.css?14148761252695619991" rel="stylesheet" type="text/css" media="all" />';
      str = str.replace('<link', '<link rtlstyle');

      var obj = {
        init: function() {
          if(e('.rtlbutton').length == 0) return false;
          e('.rtlbutton').click(function(){
            obj.handle();
          });
          if (e.cookie('rtlmode') == 'creatertl') {
            $('.rtlbutton').addClass('inwork').find('span').first().text(msg2)
            .parent().find('span').last().addClass('rtlused');
            $('head').append(str);
          }
        },
        handle: function() {
          try
          {
            if (e.cookie('rtlmode') != 'creatertl') {
              e.cookie('rtlmode', 'creatertl', {expires:1, path:'/'});
              $('.rtlbutton').addClass('inwork').find('span').first().text(msg2)
              .parent().find('span').last().addClass('rtlused');
              $('head').append(str);              
            } else {
              e.cookie("rtlmode", null, { path: '/' });
              $('.rtlbutton').removeClass('inwork').find('span').first().text(msg)
              .parent().find('span').last().removeClass('rtlused');
              $('[rtlstyle=""]').remove();
            }
          }
          catch (err) {} // ignore errors reading cookies
        }

      }
      e(document).ready(function() {
        obj.init();
      });
    })(jQuery)
  </script>



<!-- <script type="text/javascript">
	function priceChange(x) {

		alert("hello");
		var priceId = document.getElementById("priceId");
		var quantityId = document.getElementById("quantityId");
alert("priceId>>>>>"+priceId);
		alert("quantityId>>>>>>>>>>>>>>"+quantityId.value);
		
		priceId.innerHTML = (parseFloat(quantityId))
				* parseFloat(x);

	
		
	}
	</script> -->

</head>

<body>

  
  
  

  <!-- Back to top -->
  <div class="back-to-top"><span class="icon-keyboard_arrow_up"></span></div>
  <!-- /Back to top -->
  















<!-- mobile menu -->
<div class="mobile-menu-wrapper">
  <div class="mobile-menu-popup"></div>
  <nav id="off-canvas-menu">
    <a id="cboxClose">close</a>
    <ul class="expander-list">

      

  		
        
      
        
        
        
        
  
		
  		
  		
      		
      		
    		
  		
      
		
    	
      <li>
        <span class="name">
          
          
          <a href="/"><span class="act-underline">Home
          
          
          
          
          </span>
          </a>
        </span>
        
 		
          
  		
        
        
        
        

      </li>

      

  		
        
      
        
        
        
        
  
		
  		
  		
			
  			
  				
                    
      				
      				
                    
    	
      
		
    	
      <li>
        <span class="name">
          <span class="expander">-</span>
          
          <a href="/collections/women-s"><span class="act-underline">Collections
          
          
          
          
          </span>
          </a>
        </span>
        
 		
        
        
        <ul class="multicolumn-level">
          
          <li>
            
            
            
            
			
                       
            <span class="name">
              <span class="expander">-</span>
              <a href="/collections/women-s"><span class="act-underline">TOPS</span></a>
            </span>
            

              <ul class="image-links-level-3 megamenu__submenu">
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/blouses-shirts"><span class="act-underline">Blouses Shirts</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    <span class="expander">-</span>
                    <a href="/collections/women-s/dresses"><span class="act-underline">Dresses</span></a>
                  </span>
                  
                  <ul class="image-links-level-4 megamenu__submenu">
                  
                    <li class="level4">
                      
                      
                      
                      
                      
                      <span class="name">
                      
                      <a href="/collections/women-s/bodycon-dresses">Bodycon Dresses</a>
                      </span>
                      
                    </li>
                  
                    <li class="level4">
                      
                      
                      
                      
                      
                      <span class="name">
                      <span class="expander">-</span>
                      <a href="/collections/women-s/midi-dresses">Midi Dresses</a>
                      </span>
                      
                      <ul class="image-links-level-5 megamenu__submenu">
                        
                        <li class="level5"><span class="name"><a href="/collections/women-s/occasion-&-cocktail">Occasion & Cocktail</a></span></li>
                        
                        <li class="level5"><span class="name"><a href="/collections/women-s/casual-everyday">Casual Everyday</a></span></li>
                        
                        <li class="level5"><span class="name"><a href="/collections/women-s/going-out-&-party-dresses">Going Out & Party Dresses</a></span></li>
                        
                      </ul>
                      
                    </li>
                  
                    <li class="level4">
                      
                      
                      
                      
                      
                      <span class="name">
                      
                      <a href="/collections/women-s/fit-&-flare">Fit & Flare</a>
                      </span>
                      
                    </li>
                  
                    <li class="level4">
                      
                      
                      
                      
                      
                      <span class="name">
                      
                      <a href="/collections/women-s/shift-dresses">Shift Dresses</a>
                      </span>
                      
                    </li>
                  
                    <li class="level4">
                      
                      
                      
                      
                      
                      <span class="name">
                      
                      <a href="/collections/women-s/slip-dresses">Slip Dresses</a>
                      </span>
                      
                    </li>
                  
                    <li class="level4">
                      
                      
                      
                      
                      
                      <span class="name">
                      
                      <a href="/collections/women-s/tunic-dresses">Tunic Dresses</a>
                      </span>
                      
                    </li>
                  
                  </ul>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/tops-&-t-shirts"><span class="act-underline">Tops & T shirts</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/sleeveless-tops"><span class="act-underline">Sleeveless Tops</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/sweaters-&-cardigans"><span class="act-underline">Sweaters & Cardigans</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/jackets"><span class="act-underline">Jackets</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/outerwear"><span class="act-underline">Outerwear</span></a>
                  </span>
                  
                </li>
                
              </ul>
            
          </li>
          
          <li>
            
            
            
            
			
                       
            <span class="name">
              <span class="expander">-</span>
              <a href="/collections/women-s"><span class="act-underline">BOTTOMS</span></a>
            </span>
            

              <ul class="image-links-level-3 megamenu__submenu">
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/trousers"><span class="act-underline">Trousers</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/jeans"><span class="act-underline">Jeans</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/leggings"><span class="act-underline">Leggings</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/jumpsuit-&-shorts"><span class="act-underline">Jumpsuit & shorts</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/skirts"><span class="act-underline">Skirts</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/tights"><span class="act-underline">Tights</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/women-s/beachware"><span class="act-underline">Beachware</span></a>
                  </span>
                  
                </li>
                
              </ul>
            
          </li>
          
          <li>
            
            
            
            
			
                       
            <span class="name">
              <span class="expander">-</span>
              <a href="/collections/accessories"><span class="act-underline">ACCESSORIES</span></a>
            </span>
            

              <ul class="image-links-level-3 megamenu__submenu">
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/accessories/jewellery"><span class="act-underline">Jewellery</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/accessories/hats"><span class="act-underline">Hats</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/accessories/scarves-&-snoods"><span class="act-underline">Scarves & snoods</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/accessories/belts"><span class="act-underline">Belts</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/accessories/bags"><span class="act-underline">Bags</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/accessories/shoes"><span class="act-underline">Shoes</span></a>
                  </span>
                  
                </li>
                
                <li class="level3">
                  
                  
                  
                  
                  
                  <span class="name">
                    
                    <a href="/collections/accessories/sunglasses"><span class="act-underline">Sunglasses</span></a>
                  </span>
                  
                </li>
                
              </ul>
            
          </li>
          
        </ul>
  		
        
        

      </li>

      

  		
        
      
        
        
        
        
  
		
  		
  		
      		
      		
    		
  		
      
		
    	
      <li>
        <span class="name">
          
          
          <a href="/collections"><span class="act-underline">Listing
          
          
          
          
          </span>
          </a>
        </span>
        
 		
          
  		
        
        
        
        

      </li>

      

  		
        
      
        
        
        
        
  
		
  		
  		
      		
      		
    		
  		
      
		
    	
      <li>
        <span class="name">
          
          
          <a href="/products/paul-smith-blazer"><span class="act-underline">PRODUCT
          
          
          
          
          </span>
          </a>
        </span>
        
 		
          
  		
        
        
        
        

      </li>

      

  		
        
      
        
        
        
        
  
		
  		
  		
      		
      		
    		
  		
      
		
    	
      <li>
        <span class="name">
          <span class="expander">-</span>
          
          <a href="/pages/about"><span class="act-underline">About
          
          
          
          
          </span>
          </a>
        </span>
        
 		
          
            <ul class="multicolumn">
              
              
                <li>
                  
                  <span class="name">
                    
                    <a href="/pages/typography">Typography</a>
                  </span>
                  
                </li>
              
                <li>
                  
                  <span class="name">
                    
                    <a href="/pages/delivery-page">Delivery Page</a>
                  </span>
                  
                </li>
              
                <li>
                  
                  <span class="name">
                    
                    <a href="/pages/faq">Faq</a>
                  </span>
                  
                </li>
              
                <li>
                  
                  <span class="name">
                    
                    <a href="/pages/support-24">Support-24</a>
                  </span>
                  
                </li>
              
                <li>
                  
                  <span class="name">
                    
                    <a href="/pages/warranty-and-services">Warranty and Services</a>
                  </span>
                  
                </li>
              
            </ul>
          
  		
        
        
        
        

      </li>

      

  		
        
      
        
        
        
        
  
		
  		
  		
      		
      		
    		
  		
      
		
    	
      <li>
        <span class="name">
          
          
          <a href="/blogs/news"><span class="act-underline">BLOG
          
          
          
          
          </span>
          </a>
        </span>
        
 		
          
  		
        
        
        
        

      </li>

      

  		
        
      
        
        
        
        
  
		
  		
  		
      		
      		
    		
  		
      
		
    	
      <li>
        <span class="name">
          
          
          <a href="/pages/contact"><span class="act-underline">Contacts
          
          
          
          
          </span>
          </a>
        </span>
        
 		
          
  		
        
        
        
        

      </li>

      
    </ul>
  </nav>
</div>

  
  	<jsp:include page="header.jsp"></jsp:include>    

  
    <section class="breadcrumbs">
      <div class="container">
        <ol class="breadcrumb breadcrumb--ys pull-left">
          <li class="home-link"><a href="/" class="icon icon-home"></a></li>
          
              <li><span>Your Shopping Cart</span></li>
          
        </ol>

      </div>
    </section>
  

    <div id="pageContent" class="starthide">
      

<!-- CONTENT section -->
<div class="container">				
  <!-- title -->
  <div class="title-box">
    <h1 class="text-center text-uppercase title-under">Shopping Cart</h1>
  </div>
  <!-- /title -->
  
  
  <form action="checkout.jsp" method="post">    
    <!-- Shopping cart table -->
    <div class="container-widget">
      <table class="shopping-cart-table">
        <thead>
          <tr>
            <th>Product</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th>&nbsp;</th>
          </tr>
        </thead>
        <tbody>

          <c:forEach items="${sessionScope.cartlist}" var="i" varStatus="j">
          <tr>
            <td>
              <div class="shopping-cart-table__product-image">
                <a href="/products/paul-smith-blazer?variant=31530899532">
                  <a href="/products/paul-smith-blazer?variant=31530899660">
                  <img style="height: 10%;width: 35%" src="${pageContext.request.contextPath}/doc/${i.addproductVO.fileName}" alt="Black Cap" />
                </a>
                </a>
              </div>
            </td>
            <td>
              <h5 class="shopping-cart-table__product-name text-left text-uppercase">
                <a href="/products/paul-smith-blazer?variant=31530899532">${i.addproductVO.productName}</a>
              </h5>
              <ul class="shopping-cart-table__list-parameters">
                <li class="visible-xs">
                  <!-- <span>Price</span> -->
                  <span class="price-mobile"> $ <span id="priceId111" class=money>${i.addproductVO.productPrice}</span></span>
                </li>
                <li class="visible-xs">
                  <span>Quantity</span>
                  <span class="shopping-cart-table__input">
                    <input type="number" value="0"  name="abc" id="quantityId" class="form-control input-mobile">
                  </span>
                </li>
                <li class="visible-xs">
                  <span>Subtotal</span>
                  <span class="price-mobile"><span class=money></span></span>
                </li>
              </ul>																				
            </td>
            <td>
              <a class="shopping-cart-table__delete icon icon-delete visible-xs" href="/cart/change?line=2&quantity=0"></a>
            </td>
            <td>
              <div class="shopping-cart-table__product-price unit-price">
                $ <span class=money id="priceId">${i.addproductVO.productPrice }</span>
                <input type="hidden" value="${i.addproductVO.productPrice}" id="productPrice${j.count}" />
              </div>
            </td>
            <td>
              <div class="shopping-cart-table__input">
                <input type="number" name="abc" min="0" id="quantityId${j.count}" value="0" onclick="subTotal(${j.count})" class="form-control input-desktop" title="13 in stock" />
              </div>								
            </td>
            <td>
              <div class="shopping-cart-table__product-price subtotal">
                <span class=money id="output1${j.count}"></span>
                <input type="hidden" value="output${j.count}" id="output${j.count}">
                <%-- <input type="hidden" id="${i.productId}" value="${i.productId}"> --%>
              </div>
            </td>
            <td>
              <a class="shopping-cart-table__delete icon icon-clear" href="<%=request.getContextPath()%>/CartController?flag=deleteProduct&id=${i.cartId}"></a>
            </td>
          </tr>
          
          </c:forEach>

        </tbody>
      </table>
    </div>
    <!-- /Shopping cart table -->

    <div class="divider divider--xs"></div>
    <div class="clearfix shopping-cart-btns">
      <button type="button" class="btn btn--ys btn--light pull-right" id="update-cart" name="update" onclick="getGrandTotal(${cartSize})"><span class="icon icon-autorenew"></span>Get Grand Total</button>
      <div class="divider divider--xs visible-xs"></div>
      <a class="btn btn--ys btn--light" href="/cart/clear"><span class="icon icon-delete"></span>CLEAR SHOPPING CART</a>
      <div class="divider divider--xs visible-xs"></div>
      <a class="btn btn--ys btn--light pull-left btn-right" href="/"><span class="icon icon-keyboard_arrow_left"></span>CONTINUE SHOPPING</a>
      <div class="divider divider--xs visible-xs"></div>   	
    </div>


    <div class="divider--md"></div>
    <div class="row">

      
      
      <div class="divider--md visible-sm visible-xs"></div>
      

      <div class="divider--md visible-sm visible-xs"></div>
      <div class="col-md-4">
        <div class="card card--padding">
          <table class="table-total">
            <tbody>
              <tr id="subtotal">
                <th class="text-left">Subtotal</th>
                <td class="text-right"><span class="money" id="grandSpan1"> $0.00</span></td>
              </tr>
              <tr id="tax" style="display:none">
                <th class="text-left">Shipping &amp; Handling</th>
                <td class="text-right"><span class=money>$0.00</span></td>
              </tr>
            </tbody>
            <tfoot>
              <tr id="grandtotal">
                <th>GRAND TOTAL</th>
                <td><span class="money" id="grandSpan2">$0.00</span>
                </td>
              </tr>
            </tfoot>
          </table>

          <!--  <button type="submit" name="checkout" class="btn btn--ys btn--full btn--xl">-->
 <input type="text" id="totalValue" name="total">          
          <a href=""></a>

<input type="submit" value="Process to Checkout" >
          <!-- <span class="icon icon--flippedX icon-reply"></span></button>-->
        </div>
      </div>
    </div>


  </form>
  
  
  
  
  
  
  
  
  
  
  
</div>

<!-- <script>
  jQuery(function ($) {
    $("#wrapper-response").bind("DOMNodeInserted",function(){
      if($("#wrapper-response").find('#shipping-rates').length == 0)
        return false;

      var shopCurrency = 'USD'; // Main Currency
      var shippingValueTotal = 0; // Default value Shipping
      var defaultCurrencySign = ''; // sign of the a currencies
      var curstr = $('#grandtotal .money').attr("data-currency-"+shopCurrency.toLowerCase());
      for (var i = 0; i < curstr.length; i++) {
        if(Number.isInteger(parseInt(curstr.charAt(i)))) { break; }
        defaultCurrencySign += curstr.charAt(i);
      }

      //check shipping TAX
      if($("#wrapper-response #shipping-rates .money").length >= 1) {
        if($("#wrapper-response #shipping-rates .money").length > 1) {
          var str = "Two Variants";
          if(str == "") {
            $("#tax").hide();
            return false;
          }
          $("#tax .money").text(str);
          $("#tax").show();
          return false;
        }
        var content = $("#wrapper-response .money").clone();
        $("#tax .money").replaceWith(content);
        $("#tax").show();
        var shippingValueTotal = parseFloat($("#wrapper-response .money").text().replace(/[^0-9\.]/g,'')); //get Tax price
      }
      else {
        $("#tax").hide();
      }

      //get Tax price
      var tofindpoint = $('#subtotal .money').attr("data-currency-"+shopCurrency.toLowerCase()).replace(/[^0-9\.]/g,'');
      var defaultValueSubtotal = parseFloat(tofindpoint);
      //full price
      var grandtotal = defaultValueSubtotal + shippingValueTotal;
      //format to this 1,000,000.00 or 1,000,000
      grandtotal = format(grandtotal, tofindpoint);
      //for #grandtotal element
      var dataCurrencyDefault = defaultCurrencySign+grandtotal;
      //create full price with shipping
      jQuery('#grandtotal .money').replaceWith('<span class="money" data-currency-'+shopCurrency.toLowerCase()+'="'+dataCurrencyDefault+'">'+dataCurrencyDefault+'</span>');
      $('.currency .active').trigger('click');

      function format(n, k) {
        var sum = '';
        var group1 = 1000000000;
        var group2 = 1000000;
        var group3 = 1000;
        var sep = "."; // Default to period as decimal separator
        var decimals = 2; // Default to 2 decimals
        var isDecimal = k.toString(10).indexOf(".")==-1;

        var num = Math.floor(n);
        var x = Math.floor(num / group1);
        if(x > 0) {
          x = decimalWithZero(sum, x);			 
          sum = x + ",";
          num -= x * group1;
        }
        x = Math.floor(num / group2);
        if(x > 0 || sum != '') {
          x = decimalWithZero(sum, x);
          sum += x + ",";
          num -= x * group2;
        }
        x = Math.floor(num / group3);
        if(x > 0 || sum != '') {
          x = decimalWithZero(sum, x);
          sum += x + ",";
          num -= x * group3;
        }

        x = decimalWithZero(sum, num);
        sum += x;
        n = n.toFixed(decimals).split(sep)[1];

        if(isDecimal) {
          return sum;
        }
        else {
          return sum + sep + n;
        }
      }
      function decimalWithZero(sum, x) {
        if(sum != ''){
          var y = '000' + x;
          y = y.substr(y.length - 3);
          return y;
        }
        return x;
      }
    });

    $("input").change(function(){
      $("#update-cart").addClass("blink-border");
    });
    $("textarea").change(function(){
      $("#update-cart").addClass("blink-border");
    });
    
    $(".shopping-cart-table__input input").change(function(){
      var current = Number($(this).val());
      var max = $(this).attr("max");      
      if(current > max) {
         $(this).val(max);
      }
    })
  });
</script> -->


    </div>

  	<!-- FOOTER section -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- END FOOTER section -->
  	

    <!-- modalAddToCart -->
<div class="modal fade" id="modalAddToCart" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog white-modal modal-sm">
    <div class="modal-content ">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="icon icon-clear"></span></button>
      </div>
      <div class="modal-body">
        <div class="text-center">
          <span class="productmsg">Product</span>Added to cart successfully!
        </div>
      </div>
      <div class="modal-footer text-center">		       	
        <a href="/cart" class="btn btn--ys btn--full btn--lg">go to cart</a>
      </div>
    </div>
  </div>
</div>
<!-- /modalAddToCart -->
<!-- modalAddToCart Error -->
<div class="modal fade" id="modalAddToCartError" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog white-modal modal-sm">
    <div class="modal-content ">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="icon icon-clear"></span></button>
      </div>
      <div class="modal-body">
        <div class="text-center error_message">
        </div>
      </div>
    </div>
  </div>
</div>
    
    



    
<div class="modal  modal--bg fade"  id="quickViewModal">
  <div class="modal-dialog white-modal">
    <div class="modal-content container">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="icon icon-clear"></span></button>
      </div>
      <!--  -->
      <div class="product-popup">
        <div class="product-popup-content">
          <div class="container-fluid">
            <div class="row product-info-outer">
              <div class="col-xs-12 col-sm-5 col-md-6 col-lg-6">
                <div class="product-main-image">
                  <div class="product-main-image__item">
                    <div class="img_box_1"></div>
                    <div class="img_box_2"></div>
                  </div>
                </div>
              </div>
              <div class="product-info col-xs-12 col-sm-7 col-md-6 col-lg-6">
                <div class="wrapper qwt">
                  <div class="product-info__sku pull-left">SKU: <strong class='product-sku'>text</strong></div>
                  <div class="product-info__availabilitu pull-right">Availability: <strong class='product-availability'>text</strong></div>
                </div>
                <div class="product-info__title">
                  <h2 class="product_title">FROM_JS</h2>
                </div>
                <div class="price-box product-info__price price-part">
                  <span class="price-box__new">jsprice</span>
                  <span class="main">jsprice</span>
                </div>
                
                
                <div class="product-info__review">
                  <div class="rating"><span class="shopify-product-reviews-badge" data-id=""></span></div>
                </div>
                
                
                <div class="product-desc-holder">
                  <div class="divider divider--xs product-info__divider"></div>
                  <div class="product-info__description product-desc">FROM_JS</div>
                </div>

                <div class="divider divider--xs product-info__divider"></div>
                <div class="product-available">
                  <form id="add-item-qv" action="/cart/add" method="post">
                    
                    <div class="variants"></div>

                    <div class="divider divider--sm"></div>
                    <div class="wrapper">
                      <div class="pull-left control-console"><span class="qty-label">QTY:</span></div>
                      <div class="pull-left control-console"><input type="text" name="quantity" class="input--ys qty-input pull-left" value="1"></div>
                      <div class="pull-left"><button type="submit" class="btn btn--ys btn--xxl addtocartqv"><span class="icon icon-shopping_basket"></span> Add to Cart</button></div>
                    </div>
                    <script>
                      jQuery('.addtocartqv').click(function(e) {
                        e.preventDefault();
                        Shopify.addItemFromFormStart('add-item-qv', jQuery(this).attr('id'));
                      });
                    </script>  
                  </form>
                </div>
                <div class="product-disable">
                  <button disabled class="btn btn--ys btn--xxl">Unavailable</button>
                </div>
                <div class="divider divider--sm"></div>
                <a href="" class="viewfullinfo">View Full Info</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- / -->
    </div>
  </div>
</div>
<div class="quickViewModal_info" style="display: none;">
  <div class="button"><span class="icon icon-shopping_basket"></span> Add to Cart</div>
  <div class="button_added"><span class="icon icon-shopping_basket"></span> Added</div>
  <div class="button_error"><span class="icon icon-shopping_basket"></span> Limit Products</div>
  <div class="button_wait"><span class="icon icon-shopping_basket"></span> Wait</div>
</div>

<input type="hidden" id="grandTotal" name="grandTotal">
<!-- <script>
  var mainImage = '';
  jQuery(function ($) {

    quiqview = function(product_handle) {
      Shopify.getProduct(product_handle);
    }
    Shopify.onProduct = function(product) {
      $('.viewfullinfo').attr('href', product.url);
      
      var _parent = '#quickViewModal';
      $(_parent+' .product_title').text(product.title);
      
      $(_parent+' .rating').empty();
      $(_parent+' .rating').append("<span class=\"shopify-product-reviews-badge\" data-id=\""+product.id+"\"></span>");
      
      
      //check variants
      var variant = '';
      
      for (i = 0; i < product.variants.length; i++) {
        if(product.variants[i].inventory_quantity > 0) {
		  variant = product.variants[i];
          break;
        }
      }
      
      if(variant == '') {
        for (i = 0; i < product.variants.length; i++) {
          if(product.variants[i].inventory_policy == "continue") {
            variant = product.variants[i];
            break;
          }
        }
        if(variant == '') {
        	variant = product.variants[0];
        }
      }
      
      mainImage = product.featured_image;
      var shopifyimgurl = variant.featured_image ? variant.featured_image.src : product.featured_image;
      var imgurl = "<img class=\"full-width\" alt=\"\" src = \""+shopifyimgurl+"\" >";
      jQuery(_parent+' .product-main-image__item .img_box_1').empty();
      jQuery(_parent+' .product-main-image__item .img_box_1').append(imgurl);
      jQuery(_parent+' .product-main-image__item .img_box_2').empty();
      jQuery(_parent+' .product-main-image__item .img_box_2').append(imgurl);
      
      var desc = product.description;
      if (desc.indexOf("[smallDescription]") >= 0) {
        desc = desc.split("[smallDescription]");
        desc = desc[1].split("[/smallDescription]");
        $(_parent+' .product-desc').show();
        $(_parent+' .product-desc').html(desc[0]);
      }
      else {
        $(_parent+' .product-desc-holder').hide();
      }
      
      //set variants property
      var inv_qua = variant.inventory_quantity;
      //price
      if(variant.price < variant.compare_at_price) {
        $('.price-part .main').addClass('price-box__old');
        $('.price-part .price-box__new').show();
        changePriceValue('.price-part .main', variant.compare_at_price);
        changePriceValue('.price-part .price-box__new', variant.price);
      }
      else {
        $('.price-part .price-box__new').hide();
        $('.price-part .main').removeClass('price-box__old');
        changePriceValue('.price-part .main', variant.price);
      }
      
      // Variants select
      if(product.variants.length > 1) {
        var variants_margin = product.options.length == 2 ? 'variants_margin' : '';
                
        var select = '<select id="product-select-qv" name="id">';
        var selected = 'selected';
        for (i = 0; i < product.variants.length; i++) {
          var _var = product.variants[i];
          if(_var.available) {
          	select += '<option value="' + _var.id + '"' + selected +'>' + _var.title + ' - ' + Shopify.formatMoney(_var.price, "<span class=money>${{amount}}</span>") + '</option>'
			selected = '';
		  }
        }
        select += '</select>';
  		
        var variant_select = '<div class="variants_selects ' + variants_margin + '">';
        variant_select += select;
  		variant_select += '</div><div class="divider divider--sm"></div>';
		select = variant_select;
      }
      else {
		var select = '<input type="hidden" name="id" value="' + product.variants[0].id + '" />';
      }
	  $('.variants').empty();
      $('.variants').html(select);
      
      //parametres
      setParametresText(_parent+' .product-sku', variant.sku);
            if(jQuery(_parent + ' .product-sku').length) {
              var $ava = jQuery(_parent + " .product-info__availabilitu");
              if(variant.sku != "") {
                if($ava.hasClass('pull-left')){ $ava.removeClass('pull-left') }
              } else {
                if(!$ava.hasClass('pull-left')){ $ava.addClass('pull-left') }
              }
            }

      //quantity
      var out_of_stock = false;
      if(variant.inventory_management) {
        if(inv_qua > 0) {
      		$(_parent+' .product-availability').text(inv_qua + " In Stock");
        }
        else {
          	out_of_stock = true;
      		$(_parent+' .product-availability').text("Out of stock");
        }
      }
      else {
        $(_parent+' .product-availability').text("Many in stock");
      }
      
	  // button
      if(!out_of_stock || variant.inventory_policy == "continue") {        
        $('.product-available').show();
        $('.product-disable').hide();
        $('.addtocartqv').attr('id', product.id );
      }
      else {
        $('.product-available').hide();
        $('.product-disable').show();
      }

      if (product.available && product.variants.length > 1) {
        new Shopify.OptionSelectors("product-select-qv", { product: product, onVariantSelected: selectCallbackQv, enableHistoryState: true });
        
        if($('#quickViewModal .variants_selects .selector-wrapper').length > 0) {
          $.each( jQuery('#quickViewModal .variants_selects .selector-wrapper'), function(index) {
            $(this).find('label').text(product.options[index].name);
          });
        }
      }
      else {
        jQuery('.currency .active').trigger('click');
      }
      
      if($(".spr-badge").length > 0) {
		$.getScript(window.location.protocol + "js/spr.js");
      }
          
      if($(".selector-wrapper label").length) {
         $(".selector-wrapper label").each(function( index ) {
           $(this).text(jQuery(this).text() + ":");
         });
      }

      $(_parent).modal('show');

      if( !( 'ontouchstart' in window ) &&
      	!navigator.msMaxTouchPoints &&
      	!navigator.userAgent.toLowerCase().match( /windows phone os 7/i ) ) return false;

      $j('body').css("top", -$j('body').scrollTop());
      $j('body').addClass("no-scroll");
      $j('.close').click(function(){
          var top = parseInt($j('body').css("top").replace("px", ""))*-1;
          $j('body').removeAttr("style");
          $j('body').removeClass("no-scroll");
          $j('body').scrollTop(top);
      });
    }

    function setParametresText(obj, value) {
      if(value != '') {
        $(obj).parent().show();
        $(obj).text(value);
      }
      else {
        $(obj).parent().hide();
      }
    }
        
    function changePriceValue (cell, value) {
		$(cell).html(Shopify.formatMoney(value, "<span class=money>${{amount}}</span>"));
    };
    
  });


  
	var selectCallbackQv = function(variant, selector) {

      var _parent = '#quickViewModal';
      var _parentprice = _parent + ' .price-part';
      if (!variant) {
        jQuery(_parent + " .price-box").hide();
        jQuery(_parent + " .qwt").hide();
        jQuery(_parent + " .control-console").hide();
        jQuery(_parent + ' .addtocartqv').attr('disabled','disabled');
        jQuery(_parent + ' .addtocartqv').text('Unavailable');
        return false;
      }
                                               
      jQuery(_parent + " .price-box").show();
      jQuery(_parent + " .qwt").show();
      jQuery(_parent + " .control-console").show();

      if(variant.price < variant.compare_at_price){
        jQuery(_parentprice + ' .main').addClass('price-box__old');
        jQuery(_parentprice + ' .price-box__new').show();
        changePriceValue(_parentprice + ' .main', variant.compare_at_price);
        changePriceValue(_parentprice + ' .price-box__new', variant.price);
      } else {
        jQuery(_parentprice + ' .price-box__new').hide();
        jQuery(_parentprice + ' .main').removeClass('price-box__old');
        changePriceValue(_parentprice + ' .main', variant.price);
      }

      newVariantTextDataQv(_parent + ' .product-sku', variant.sku);

      if(jQuery(_parent + ' .product-sku').length) {
        var $ava = jQuery(_parent + " .product-info__availabilitu");
        if(variant.sku != "") {
          if($ava.hasClass('pull-left')){ $ava.removeClass('pull-left') }
        } else {
          if(!$ava.hasClass('pull-left')){ $ava.addClass('pull-left') }
        }
      }
          
      if (variant.available) {
        if (variant.inventory_management == null) {
          jQuery(_parent + " .product-availability").text("Many in stock");
        } else {
          jQuery(_parent + " .product-availability").text(variant.inventory_quantity + " in stock");
        }
      } else {
        jQuery(_parent + " .product-availability").text("Out of stock");
      }
      
	  var shopifyimgurl = variant.featured_image ? variant.featured_image.src : mainImage;
      var imgurl = "<img class=\"full-width\" alt=\"\" src = \""+shopifyimgurl+"\" >";
	  if(jQuery(_parent+' .product-main-image__item .img_box_1').children().length > 0) {
		var detach = jQuery(_parent+' .product-main-image__item .img_box_1 img').detach();
		jQuery(_parent+' .product-main-image__item .img_box_2').empty();
        jQuery(_parent+' .product-main-image__item .img_box_2').append(detach);
      }
      jQuery(_parent+' .product-main-image__item .img_box_1').empty();
      jQuery(_parent+' .product-main-image__item .img_box_1').append(imgurl);
          
      if (variant && variant.available) {
        jQuery(_parent + ' .addtocartqv').removeAttr('disabled');
        jQuery(_parent + ' .addtocartqv').html('<span class="icon icon-shopping_basket"></span> Add to Cart');
        jQuery(_parent + " .control-console").show();
      } else {
      	jQuery(_parent + ' .addtocartqv').attr('disabled','disabled');
        jQuery(_parent + ' .addtocartqv').text('Unavailable');
        jQuery(_parent + " .control-console").hide();
      }
          
	  jQuery('.currency .active').trigger('click');
  	};
  
    function changePriceValue (cell, value) {
		jQuery(cell).html(Shopify.formatMoney(value, "<span class=money>${{amount}}</span>"));
    };
  
    function newVariantTextDataQv (obj, value) {
      if(value != '') {
        jQuery(obj).parent().show();
        jQuery(obj).text(value);
      }
      else {
        jQuery(obj).parent().hide();
      }
    };
        
</script> -->


    <div id="custom-preloader">
  <div class="custom-loader" style="display: none;">
    <img width="32" height="32" alt="" src="img/ajax-loader.gif?14148761252695619991">
  </div>
</div>
  

  <div class="cart_messages" style="display:none">
    <div class="edit">Edit</div>
    <div class="delete">Delete</div>
    <div class="price">Price:</div>
    <div class="qty">Qty:</div>
  </div>
  <div class="button_massage" style="display:none"><span class="icon icon-shopping_basket"></span> Add to Cart</div>

  <div class="rtlbutton">
    <div class="box-btn color-2"><span>Use Demo with</span><span class="rtl_button">RTL</span></div>
  </div>  
  
  <script src="js/bootstrap.min.js?14148761252695619991" type="text/javascript"></script>
<script src="js/slick.min.js?14148761252695619991" type="text/javascript"></script>
<script src="js/imagesloaded.pkgd.min.js?14148761252695619991" type="text/javascript"></script>
<script src="js/instafeed.min.js?14148761252695619991" type="text/javascript"></script>

<script src="js/jquery.parallax-1.1.3.js?14148761252695619991" type="text/javascript"></script>
<script src="js/jquery.plugin.min.js?14148761252695619991" type="text/javascript"></script>
<script src="js/jquery.countdown.min.js?14148761252695619991" type="text/javascript"></script>
<script src="js/jquery.magnific-popup.min.js?14148761252695619991" type="text/javascript"></script>



<script src="js/custom.js?14148761252695619991" type="text/javascript"></script>


<script type="text/javascript">

	function subTotal(x){
		var price = document.getElementById("productPrice"+x).value;
		var quantity = document.getElementById("quantityId"+x).value;
		var subTotal = price * quantity;
		$("#output1"+x).html(subTotal);
		$("#output"+x).val(subTotal);
	}
	
	function getGrandTotal(x){
		var productTotal ; 
		var grandTotal = 0; 
		for(var i=1; i<=x;i++){
			productTotal = document.getElementById("output"+i).value;
			grandTotal = parseInt(grandTotal) + parseInt(productTotal);
		}
		$("#grandTotal").val(grandTotal);
		$("#grandSpan2").html("$. "+grandTotal);
		$("#grandSpan1").html("$. "+grandTotal);
		$("#totalValue").val(grandTotal);
		//sessionStorage.setItem("qwerty", grandTotal);
		 //alert( "ooooooooo = " + sessionStorage.getItem("qwerty")); 
	}

</script>

<script src="js/jquery.min.js" type="text/javascript"></script>
<script>
$("#quantityId").change(function () {
alert("helloIDGETT.......IN Mehod");
    console.log("afterID>>>>>>>>>>>>>");
	//$("#priceId")
//jquery.min.js	
	
	var textValue1 =$('#priceId').html();
     var textValue2 = $('#quantityId').val();

     $('#output').html(parseFloat(textValue1) * parseFloat(textValue2)); 	
	
	//$('#output').val($('#quantityId').val() * $('#priceId').val());
});

</script>











<script>
  var $ = jQuery;
  productCarousel($('.megaMenuCarousel_js'),1,1,1,1,1);
  mobileOnlyCarousel();

  /* Work with fullscreen_banners.liquid */
  if($('.banner-carousel-added').length) {
    $('.banner-carousel-added').remove();
  	bannerCarousel($('.banner-carousel'));
  }
</script>
    <script src="//cdn.shopify.com/s/javascripts/currencies.js" type="text/javascript"></script>
  <script src="//cdn.shopify.com/s/files/1/1637/5229/t/4/assets/jquery.currencies.min.js?14148761252695619991" type="text/javascript"></script>

  <script>

    // Pick your format here:
    // money_format or money_with_currency_format
    Currency.format = 'money_format';

    var shopCurrency = 'USD';

    /* Sometimes merchants change their shop currency, let's tell our JavaScript file */
    Currency.moneyFormats[shopCurrency].money_with_currency_format = "${{amount}} USD";
    Currency.moneyFormats[shopCurrency].money_format = "${{amount}}";

    var cookieCurrency;
    try {cookieCurrency = Currency.cookie.read();} catch (err) {} // ignore errors reading cookies

    // Fix for customer account pages.
    jQuery('span.money span.money').each(function() {
      jQuery(this).parents('span.money').removeClass('money');
    });

    // Saving the current price.
    jQuery('span.money').each(function() {
      jQuery(this).attr('data-currency-USD', jQuery(this).html());
    });

      // Select all your currencies buttons.
      var buttons = jQuery('.currency li');

      // If there's no cookie or it's the shop currency.
      if (cookieCurrency == null || cookieCurrency === shopCurrency) {
        buttons.removeClass('active');
        jQuery('.currency li[data-currency=' + shopCurrency + ']').addClass('active');
        Currency.currentCurrency = shopCurrency;
        jQuery(".current-currency").text(shopCurrency);
      }
      else {
        Currency.convertAll(shopCurrency, cookieCurrency);
        buttons.removeClass('active');
        jQuery('.currency li[data-currency=' + cookieCurrency + ']').addClass('active');
        jQuery(".current-currency").text(cookieCurrency);
      }

      // When customer clicks on a currency button.
      buttons.click(function() {
        buttons.removeClass('active');
        var cur = jQuery(this).attr('data-currency');
        jQuery( ".currency li[data-currency='" + cur + "']" ).addClass('active');
        
        var newCurrency =  jQuery(this).attr('data-currency');
        if(newCurrency == Currency.currentCurrency)
        {
          	Currency.convertAll(shopCurrency, newCurrency);
        }
        else
        {
            Currency.convertAll(Currency.currentCurrency, newCurrency);
        }
        
        jQuery(".current-currency").text(cur);
      });

      // For product options.
      var main_selectCallback = window.selectCallback;
      var selectCallback = function(variant, selector) {
          main_selectCallback(variant, selector);
          Currency.convertAll(shopCurrency, jQuery(".currency .active").attr('data-currency'));
      };
  </script>
  

<script>
var $ = jQuery.noConflict();
$(function() {
  // Current Ajax request.
  var currentAjaxRequest = null;
  // Grabbing all search forms on the page, and adding a .search-results list to each.
  var searchForms = $('form[action="/search"]').css('position','relative').each(function() {
    // Grabbing text input.
    var input = $(this).find('input[name="q"]');
    // Adding a list for showing search results.
    var offSet = input.position().top + input.innerHeight() + 1;
    $('<ul class="search-results"></ul>').css( { 'position': 'absolute', 'left': '0px', 'top': offSet } ).appendTo($(this)).hide();    
    // Listening to keyup and change on the text field within these search forms.
    input.attr('autocomplete', 'off').bind('keyup change', function() {
      // What's the search term?
      var term = $(this).val();
      // What's the search form?
      var form = $(this).closest('form');
      // What's the search URL?
      var searchURL = '/search?type=product&q=' + term;
      // What's the search results list?
      var resultsList = form.find('.search-results');
      // If that's a new term and it contains at least 3 characters.
      if (term.length > 3 && term != $(this).attr('data-old-term')) {
        // Saving old query.
        $(this).attr('data-old-term', term);
        // Killing any Ajax request that's currently being processed.
        if (currentAjaxRequest != null) currentAjaxRequest.abort();
        // Pulling results.
        currentAjaxRequest = $.getJSON(searchURL + '&view=json', function(data) {
          // Reset results.
          resultsList.empty();
          // If we have no results.
          if(data.results_count == 0) {
            // resultsList.html('<li><span class="title">No results.</span></li>');
            // resultsList.fadeIn(200);
            resultsList.hide();
          } else {
            // If we have results.
            $.each(data.results, function(index, item) {
              var link = $('<a></a>').attr('href', item.url);
              link.append('<span class="thumbnail"><img src="' + item.thumbnail + '" /></span>');
              link.append('<span class="title">' + item.title + '</span>');
              link.wrap('<li></li>');
              resultsList.append(link.parent());
            });
            // The Ajax request will return at the most 10 results.
            // If there are more than 10, let's link to the search results page.
            if(data.results_count > 10) {
              resultsList.append('<li><span class="title"><a href="' + searchURL + '">See all results (' + data.results_count + ')</a></span></li>');
            }
            resultsList.fadeIn(200);
          }
          $('.search-results').css( { 'width': input.innerWidth() + 2 });
        });
      }
    });
    //setTimeout(function(){ )}, 5);
  });
  // Clicking outside makes the results disappear.
  $('body').bind('click', function(){
    $('.search-results').hide();
  });
  $(window).resize(function(){
    var input = $('form[action="/search"]').find('input[name="q"]');
    if(input.length == 0) return false;
    var offSet = input.position().top + input.innerHeight() + 1;
    
    $('.search-results').css( { 'position': 'absolute', 'left': '0px', 'top': offSet, 'width': input.innerWidth() + 2 } );
  })
});
</script>

<!-- Some styles to get you started. -->
<style>
.search-results {
  z-index: 8889;
  list-style-type: none;   
  width: 80%;
  margin: 0;
  padding: 0;
  background: #ffffff;
  border: 1px solid #e5e5e5;
  overflow: hidden;
}
.search-results li {
  display: block;
  width: 100%;
  margin: 0;
  border-top: 1px solid #e5e5e5;
  line-height: 38px;
  overflow: hidden;
}
.search-results li:first-child {
  border-top: none;
}
.search-results .title {
  float: left;
  padding-left: 8px;
  white-space: nowrap;
  overflow: hidden;
  /* The text-overflow property is supported in all major browsers. */
  text-align: left;
}
.search-results .thumbnail {
  float: left;
  display: block;
  width: 32px;
  height: 32px;    
  margin: 3px 0 3px 3px;
  padding: 0;
  text-align: center;
  overflow: hidden;
}
.search-results .thumbnail img {
  width: 100%;
}
  .search-dropdown .search-results a {
  	display: block;
    padding: 6px;
    overflow: hidden;
  }
  .search-dropdown .search-results a:hover {
    color: #000000;
  }
  .search-dropdown .search-results .title {
  margin: 0;
  }
  @media (max-width: 1024px)
  {
    .search-results {
      margin-left: 15px;
    }
  }
</style>
  
</body>
</html>