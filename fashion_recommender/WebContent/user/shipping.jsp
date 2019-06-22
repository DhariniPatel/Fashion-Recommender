<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" dir="ltr" class="no-js multi-step windows firefox desktop page--no-banner page--logo-main page--show  card-fields">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, height=device-height, minimum-scale=1.0, user-scalable=0">

    <title>fashop-default - Checkout</title>

    

    

<!--[if lt IE 9]>
<link rel="stylesheet" media="all" href="//cdn.shopify.com/app/services/16375229/assets/163731404/checkout_stylesheet/v2-ltr-edge-dd61a410c3e9509cd270ee52504de08e-14148761252695619991/oldie" />
<![endif]-->

<!--[if gte IE 9]><!-->
  <link rel="stylesheet" media="all" href="css/v2-ltr-edge-dd61a410c3e9509cd270ee52504de08e-14148761252695619991.css" />

<!--<![endif]-->






    <meta data-browser="firefox" data-browser-major="52">
<meta data-body-font-family="Helvetica Neue" data-body-font-type="system">
<meta id="shopify-digital-wallet" data-iframe-url="/16375229/digital_wallets/dialog" />

  <script type="text/javascript">
    (function() {
      window.ShopifyExperiments = {};
      window.ShopifyExperiments.rememberMe = false;
      window.ShopifyExperiments.digitalWallet = true;
      window.ShopifyExperiments.checkoutWithPhone = false;
    })();
  </script>


  <script src="js/checkout-eb9e00a603aca8437f60bb6ad6f7f35e81978b7362f99fa08995fea521e0e72c.js"></script>

    <script src="js/card_fields.js"></script>

  

    <meta name="shopify-checkout-authorization-token" content="f3d879645beaf99b2a57a100e3270f65" />

    
    
    <script src="js/countries-0ccf19e03a919c23b3cddc06bf1e6c63434c1f4b-1482233444.js"></script>

  <script type="text/javascript">
    if (window.opener) {
      window.opener.postMessage(JSON.stringify({"current_checkout_page": "\/checkout\/payment"}), "*");
    }

    if (typeof Shopify == 'undefined') { Shopify = {}; }
    Shopify.Checkout = {};
    Shopify.Checkout.locale = "en";
    Shopify.Checkout.token = "4c4238a7b36088e58dc6a8f511f97b7e";
    Shopify.Checkout.page = "show";
    Shopify.Checkout.step = "payment_method";
    Shopify.Checkout.apiHost = "fashop-default.myshopify.com";
    Shopify.Checkout.rememberMeHost = "remember-me.shopifycloud.com";
    Shopify.Checkout.rememberMeAccessToken = "N0NKdWptaVQ1OXlDU1FvdDU3aVNTYk5iTUdFMmMzUGJMaHhEN1hQYkN6d0RNZzh5K0Z5SVlGRFVvdmJkZTNLMi0tQWVCd0RqMzJCTkNoejZsUUhsYmtuZz09--39a340dd58337f630ebfa42753c0c643fbdebabf";
    Shopify.Checkout.AddressFormat = {"N_p_c_sc_a":[["company"],["last_name","first_name"],["zip"],["country"],["province","city"],["address1","address2"],["phone"]],"N_p_c_c_a":[["company"],["last_name","first_name"],["zip"],["country"],["city"],["address1","address2"],["phone"]],"n_a_c_csp":[["first_name","last_name"],["company"],["address1","address2"],["city"],["country","province","zip"],["phone"]],"n_a_c_cs":[["first_name","last_name"],["company"],["address1","address2"],["city"],["country","province"],["phone"]],"n_a_c_cp":[["first_name","last_name"],["company"],["address1","address2"],["city"],["country","zip"],["phone"]],"n_a_c_c":[["first_name","last_name"],["company"],["address1","address2"],["city"],["country"],["phone"]]};

    Shopify.Checkout.AssetPaths = {};
    Shopify.Checkout.AssetPaths.libphonenumber = "js/libphonenumber-c649547d64e1937033246a329b2bf602b844827e0c121cbe622bcedcc90483cc.js";

    var thankYouStep = false;
    var rememberMeCookie = false;
    var rememberMeEnabled = false;

    if(thankYouStep) {
      Shopify.Checkout.OrderStatus = OrderStatusPageApi.prototype;
    }

    if(rememberMeCookie && rememberMeEnabled) {
      Shopify.Checkout.rememberMeCookieIsHere = true;
    }
  </script>

    

  
  

  <script type="text/javascript">
  Shopify.clientAttributesCollectionEventName =
    "client_attributes_checkout";
  var DF_CHECKOUT_TOKEN = "4c4238a7b36088e58dc6a8f511f97b7e";
</script>





  <script id="__st">
//<![CDATA[
var __st={"a":16375229,"offset":-14400,"reqid":"dd8260c0-fa5b-4fa0-80a6-3d3864d6b63b","pageurl":"checkout.shopify.com\/16375229\/checkouts\/4c4238a7b36088e58dc6a8f511f97b7e?previous_step=shipping_method\u0026step=payment_method","u":"d843a5fd2b0e","t":"checkout","offsite":1};
//]]>
</script><script src="js/shopify_stats.js?v=6" type="text/javascript" async="async"></script>





  </head>
  <body>
    <div class="banner" data-header>
      <div class="wrap">
        
<a href="https://fashop-default.myshopify.com" class="logo logo--left">
    <h1 class="logo__text">fashop-default</h1>
</a>

      </div>
    </div>

    <button class="order-summary-toggle order-summary-toggle--show" data-drawer-toggle="[data-order-summary]">
  <div class="wrap">
    <div class="order-summary-toggle__inner">
      <div class="order-summary-toggle__icon-wrapper">
        <svg width="20" height="19" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__icon">
          <path d="M17.178 13.088H5.453c-.454 0-.91-.364-.91-.818L3.727 1.818H0V0h4.544c.455 0 .91.364.91.818l.09 1.272h13.45c.274 0 .547.09.73.364.18.182.27.454.18.727l-1.817 9.18c-.09.455-.455.728-.91.728zM6.27 11.27h10.09l1.454-7.362H5.634l.637 7.362zm.092 7.715c1.004 0 1.818-.813 1.818-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817zm9.18 0c1.004 0 1.817-.813 1.817-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817z"/>
        </svg>
      </div>
      <div class="order-summary-toggle__text order-summary-toggle__text--show">
        <span>Show order summary</span>
        <svg width="11" height="6" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__dropdown" fill="#000"><path d="M.504 1.813l4.358 3.845.496.438.496-.438 4.642-4.096L9.504.438 4.862 4.534h.992L1.496.69.504 1.812z" /></svg>
      </div>
      <div class="order-summary-toggle__text order-summary-toggle__text--hide">
        <span>Hide order summary</span>
        <svg width="11" height="7" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__dropdown" fill="#000"><path d="M6.138.876L5.642.438l-.496.438L.504 4.972l.992 1.124L6.138 2l-.496.436 3.862 3.408.992-1.122L6.138.876z" /></svg>
      </div>
      <div class="order-summary-toggle__total-recap total-recap" data-order-summary-section="toggle-total-recap">
        <span class="total-recap__final-price" data-checkout-payment-due-target="10500">$105.00</span>
      </div>
    </div>
  </div>
</button>


    <div class="content" data-content>
      <div class="wrap">
        <div class="sidebar" role="complementary">
          <div class="sidebar__header">
            
<a href="https://fashop-default.myshopify.com" class="logo logo--left">
    <h1 class="logo__text">fashop-default</h1>
</a>

          </div>
          <div class="sidebar__content">
            <div class="order-summary order-summary--is-collapsed" data-order-summary>
  <h2 class="visually-hidden">Order summary</h2>

  <div class="order-summary__sections">
    <div class="order-summary__section order-summary__section--product-list">
  <div class="order-summary__section__content">
    <table class="product-table">
      <caption class="visually-hidden">Shopping cart</caption>
      <thead>
        <tr>
          <th scope="col"><span class="visually-hidden">Product image</span></th>
          <th scope="col"><span class="visually-hidden">Description</span></th>
          <th scope="col"><span class="visually-hidden">Quantity</span></th>
          <th scope="col"><span class="visually-hidden">Price</span></th>
        </tr>
      </thead>
      <tbody data-order-summary-section="line-items">
        <tr class="product" data-product-id="9097940428" data-variant-id="31530899532" data-product-type="Dress">
          <td class="product__image">
            <div class="product-thumbnail">
  <div class="product-thumbnail__wrapper">
    <img alt="D-Kallien Boots" class="product-thumbnail__image" src="img/LEATHER_FUR_CROSSBODY_BAG_4_small.jpg?14148761252695619991" />
  </div>
    <span class="product-thumbnail__quantity" aria-hidden="true">1</span>
</div>

          </td>
          <td class="product__description">
            <span class="product__description__name order-summary__emphasis">D-Kallien Boots</span>
            <span class="product__description__variant order-summary__small-text">S / green</span>

          </td>
          <td class="product__quantity visually-hidden">
            1
          </td>
          <td class="product__price">
            <span class="order-summary__emphasis">$85.00</span>
          </td>
        </tr>
      </tbody>
    </table>

    <div class="order-summary__scroll-indicator">
      Scroll for more items
      <svg xmlns="http://www.w3.org/2000/svg" width="10" height="12" viewBox="0 0 10 12"><path d="M9.817 7.624l-4.375 4.2c-.245.235-.64.235-.884 0l-4.375-4.2c-.244-.234-.244-.614 0-.848.245-.235.64-.235.884 0L4.375 9.95V.6c0-.332.28-.6.625-.6s.625.268.625.6v9.35l3.308-3.174c.122-.117.282-.176.442-.176.16 0 .32.06.442.176.244.234.244.614 0 .848"/></svg>
    </div>
  </div>
</div>



    <div class="order-summary__section order-summary__section--total-lines" data-order-summary-section="payment-lines">
  <table class="total-line-table">
    <caption class="visually-hidden">Cost summary</caption>
    <thead>
      <tr>
        <th scope="col"><span class="visually-hidden">Description</span></th>
        <th scope="col"><span class="visually-hidden">Price</span></th>
      </tr>
    </thead>
      <tbody class="total-line-table__tbody">
        <tr class="total-line total-line--subtotal">
          <td class="total-line__name">Subtotal</td>
          <td class="total-line__price">
            <span class="order-summary__emphasis" data-checkout-subtotal-price-target="8500">
              $85.00
            </span>
          </td>
        </tr>


          <tr class="total-line total-line--shipping">
            <td class="total-line__name">Shipping</td>
            <td class="total-line__price">
              <span class="order-summary__emphasis" data-checkout-total-shipping-target="2000">
                $20.00
              </span>
            </td>
          </tr>


      </tbody>
    <tfoot class="total-line-table__footer">
      <tr class="total-line">
        <td class="total-line__name payment-due-label">
          <span class="payment-due-label__total">Total</span>
            <span class="payment-due-label__taxes hidden" data-checkout-taxes>
              Including <span data-checkout-total-taxes-target="0">$0.00</span> in taxes
            </span>
        </td>
        <td class="total-line__price payment-due">
          <span class="payment-due__currency">USD</span>
          <span class="payment-due__price" data-checkout-payment-due-target="10500">
            $105.00
          </span>
        </td>
      </tr>
    </tfoot>
  </table>
</div>

  </div>
</div>

          </div>
        </div>
        <div class="main" role="main">
          <div class="main__header">
            
<a href="https://fashop-default.myshopify.com" class="logo logo--left">
    <h1 class="logo__text">fashop-default</h1>
</a>

            <ul class="breadcrumb ">
    <li class="breadcrumb__item breadcrumb__item--completed">
      <a class="breadcrumb__link" href="https://fashop-default.myshopify.com/cart">Cart</a>
      <svg class="icon-svg icon-svg--size-10 breadcrumb__chevron-icon rtl-flip" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10"><path d="M2 1l1-1 4 4 1 1-1 1-4 4-1-1 4-4"/></svg>
    </li>

    <li class="breadcrumb__item breadcrumb__item--completed">
      <a class="breadcrumb__link" href="https://checkout.shopify.com/16375229/checkouts/4c4238a7b36088e58dc6a8f511f97b7e?step=contact_information">Customer information</a>
        <svg class="icon-svg icon-svg--size-10 breadcrumb__chevron-icon rtl-flip" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10"><path d="M2 1l1-1 4 4 1 1-1 1-4 4-1-1 4-4"/></svg>
    </li>
    <li class="breadcrumb__item breadcrumb__item--completed">
      <a class="breadcrumb__link" href="https://checkout.shopify.com/16375229/checkouts/4c4238a7b36088e58dc6a8f511f97b7e?step=shipping_method">Shipping method</a>
        <svg class="icon-svg icon-svg--size-10 breadcrumb__chevron-icon rtl-flip" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10"><path d="M2 1l1-1 4 4 1 1-1 1-4 4-1-1 4-4"/></svg>
    </li>
    <li class="breadcrumb__item breadcrumb__item--current">
      <span class="breadcrumb__text">Payment method</span>
    </li>
</ul>

            <div data-alternative-payments>
</div>

          </div>
          <div class="main__content">
            <div class="step" data-step="payment_method">
  
  <form data-payment-form="" class="edit_checkout" action="https://checkout.shopify.com/16375229/checkouts/4c4238a7b36088e58dc6a8f511f97b7e" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="patch" /><input type="hidden" name="authenticity_token" value="EB2ezZKNy7kqX/rwChlArlnHwKo5UhMTSL86jeUU1kpnE3mOmHj1LM0UlIDPlNx7DB07o+Oq8Ux1gnYPvKv5rQ==" />

    <input type="hidden" name="previous_step" id="previous_step" value="payment_method" />
    <input type="hidden" name="step" />
    <input type="hidden" name="s" id="s" />


      <div class="step__sections">
          <div class="section section--payment-method" data-payment-method>
  <div class="section__header">
    <h2 class="section__title">Payment method</h2>
      <p class="section__text">
        All transactions are secure and encrypted.
      </p>
  </div>

  <div class="section__content">

    <div data-payment-subform="required">
      <div class="content-box">
          <div class="radio-wrapper content-box__row " data-gateway-group="manual" data-select-gateway="114931404">
              <input value="114931404" size="30" type="hidden" name="checkout[payment_gateway]" />

            <label class="radio__label content-box__emphasis " for="checkout_payment_gateway_114931404">
              <div class="radio__label__primary">
                  Cash on Delivery (COD)
              </div>

              <div class="radio__label__accessory">
              </div>
</label>          </div>

            
         
      </div>
    </div> 

    <div data-payment-subform="gift_cards" class="hidden">
      <input value="free" disabled="disabled" size="30" type="hidden" name="checkout[payment_gateway]" />
      <div class="content-box blank-slate">
        <div class="content-box__row">
          <i class="blank-slate__icon icon icon--free-tag"></i>
          <p>Your order is covered by your gift cards.</p>
        </div>
      </div>
</div>
    <div data-payment-subform="free" class="hidden">
      <input value="free" disabled="disabled" size="30" type="hidden" name="checkout[payment_gateway]" />
      <div class="content-box blank-slate">
        <div class="content-box__row">
          <i class="blank-slate__icon icon icon--free-tag"></i>
          <p>Your order is <strong>free</strong>. No payment is required.</p>
        </div>
      </div>
</div>  </div> 
</div>

  <div class="section section--billing-address" data-billing-address>
    <div class="section__header">
      <h2 class="section__title">Billing address</h2>
    </div>

    <div class="section__content">
      <div class="content-box">
        <div class="radio-wrapper content-box__row">
          <div class="radio__input">
            <input class="input-radio" data-backup="different_billing_address_false" type="radio" value="false" checked="checked" name="checkout[different_billing_address]" id="checkout_different_billing_address_false" />
          </div>

          <label class="radio__label content-box__emphasis" for="checkout_different_billing_address_false">
            Same as shipping address
</label>        </div>

        <div class="radio-wrapper content-box__row">
          <div class="radio__input">
            <input class="input-radio" data-backup="different_billing_address_true" aria-expanded="true" aria-controls="section--billing-address__different" type="radio" value="true" name="checkout[different_billing_address]" id="checkout_different_billing_address_true" />
          </div>
          <label class="radio__label content-box__emphasis" for="checkout_different_billing_address_true">
            Use a different billing address
</label>        </div>

        <div class="radio-group__row content-box__row content-box__row--secondary" id="section--billing-address__different">
          <div class="fieldset" data-address-fields>
            
              
<input class="visually-hidden" autocomplete="billing given-name" tabindex="-1" data-autocomplete-field="first_name" size="30" type="text" name="checkout[billing_address][first_name]" />
<div class="field--half field field--optional" data-address-field="first_name">
  <label class="field__label" for="checkout_billing_address_first_name">First name</label>
  <div class="field__input-wrapper">
    <input placeholder="First name" autocomplete="billing given-name" data-backup="first_name" class="field__input" size="30" type="text" name="checkout[billing_address][first_name]" id="checkout_billing_address_first_name" />
  </div>
</div>
<input class="visually-hidden" autocomplete="billing family-name" tabindex="-1" data-autocomplete-field="last_name" size="30" type="text" name="checkout[billing_address][last_name]" />
<div class="field--half field field--required" data-address-field="last_name">
  <label class="field__label" for="checkout_billing_address_last_name">Last name</label>
  <div class="field__input-wrapper">
    <input placeholder="Last name" autocomplete="billing family-name" data-backup="last_name" class="field__input" size="30" type="text" name="checkout[billing_address][last_name]" id="checkout_billing_address_last_name" />
  </div>
</div>

<input class="visually-hidden" autocomplete="billing address-line1" tabindex="-1" data-autocomplete-field="address1" size="30" type="text" name="checkout[billing_address][address1]" />
<div class="field--two-thirds field field--required" data-address-field="address1">
  <label class="field__label" for="checkout_billing_address_address1">Address</label>
  <div class="field__input-wrapper">
    <input placeholder="Address" autocomplete="billing address-line1" data-backup="address1" data-google-places="name" class="field__input" size="30" type="text" name="checkout[billing_address][address1]" id="checkout_billing_address_address1" />
  </div>
</div>
  <input class="visually-hidden" autocomplete="billing address-line2" tabindex="-1" data-autocomplete-field="address2" size="30" type="text" name="checkout[billing_address][address2]" />
  <div class="field--third field field--optional" data-address-field="address2">
    <label class="field__label" for="checkout_billing_address_address2">Apt, suite, etc. (optional)</label>
    <div class="field__input-wrapper">
      <input placeholder="Apt, suite, etc. (optional)" autocomplete="billing address-line2" data-backup="address2" class="field__input" size="30" type="text" name="checkout[billing_address][address2]" id="checkout_billing_address_address2" />
    </div>
</div>
<input class="visually-hidden" autocomplete="billing address-level2" tabindex="-1" data-autocomplete-field="city" size="30" type="text" name="checkout[billing_address][city]" />
<div data-address-field="city" class="field field--required">
  <label class="field__label" for="checkout_billing_address_city">City</label>
  <div class="field__input-wrapper">
    <input placeholder="City" autocomplete="billing address-level2" data-backup="city" data-google-places="locality" class="field__input" size="30" type="text" name="checkout[billing_address][city]" id="checkout_billing_address_city" />
  </div>
</div>
<input class="visually-hidden" autocomplete="billing country" tabindex="-1" data-autocomplete-field="country" size="30" type="text" name="checkout[billing_address][country]" />
<div data-address-field="country" class="field--three-eights field field--required">
  <label class="field__label" for="checkout_billing_address_country">Country</label>
  <div class="field__input-wrapper field__input-wrapper--select">
    <select size="1" autocomplete="billing country" data-backup="country" class="field__input field__input--select" name="checkout[billing_address][country]" id="checkout_billing_address_country"><option data-code="IN" selected="selected" value="India">India</option>
<option data-code="VN" value="Vietnam">Vietnam</option>
<option data-code="US" value="United States">United States</option>
<option disabled="disabled" value="---">---</option>
<option data-code="AF" value="Afghanistan">Afghanistan</option>
<option data-code="AX" value="Aland Islands">Åland Islands</option>
<option data-code="AL" value="Albania">Albania</option>
<option data-code="DZ" value="Algeria">Algeria</option>
<option data-code="AD" value="Andorra">Andorra</option>
<option data-code="AO" value="Angola">Angola</option>
<option data-code="AI" value="Anguilla">Anguilla</option>
<option data-code="AG" value="Antigua And Barbuda">Antigua &amp; Barbuda</option>
<option data-code="AR" value="Argentina">Argentina</option>
<option data-code="AM" value="Armenia">Armenia</option>
<option data-code="AW" value="Aruba">Aruba</option>
<option data-code="AU" value="Australia">Australia</option>
<option data-code="AT" value="Austria">Austria</option>
<option data-code="AZ" value="Azerbaijan">Azerbaijan</option>
<option data-code="BS" value="Bahamas">Bahamas</option>
<option data-code="BH" value="Bahrain">Bahrain</option>
<option data-code="BD" value="Bangladesh">Bangladesh</option>
<option data-code="BB" value="Barbados">Barbados</option>
<option data-code="BY" value="Belarus">Belarus</option>
<option data-code="BE" value="Belgium">Belgium</option>
<option data-code="BZ" value="Belize">Belize</option>
<option data-code="BJ" value="Benin">Benin</option>
<option data-code="BM" value="Bermuda">Bermuda</option>
<option data-code="BT" value="Bhutan">Bhutan</option>
<option data-code="BO" value="Bolivia">Bolivia</option>
<option data-code="BA" value="Bosnia And Herzegovina">Bosnia &amp; Herzegovina</option>
<option data-code="BW" value="Botswana">Botswana</option>
<option data-code="BV" value="Bouvet Island">Bouvet Island</option>
<option data-code="BR" value="Brazil">Brazil</option>
<option data-code="IO" value="British Indian Ocean Territory">British Indian Ocean Territory</option>
<option data-code="VG" value="Virgin Islands, British">British Virgin Islands</option>
<option data-code="BN" value="Brunei">Brunei</option>
<option data-code="BG" value="Bulgaria">Bulgaria</option>
<option data-code="BF" value="Burkina Faso">Burkina Faso</option>
<option data-code="BI" value="Burundi">Burundi</option>
<option data-code="KH" value="Cambodia">Cambodia</option>
<option data-code="CM" value="Republic of Cameroon">Cameroon</option>
<option data-code="CA" value="Canada">Canada</option>
<option data-code="CV" value="Cape Verde">Cape Verde</option>
<option data-code="KY" value="Cayman Islands">Cayman Islands</option>
<option data-code="CF" value="Central African Republic">Central African Republic</option>
<option data-code="TD" value="Chad">Chad</option>
<option data-code="CL" value="Chile">Chile</option>
<option data-code="CN" value="China">China</option>
<option data-code="CX" value="Christmas Island">Christmas Island</option>
<option data-code="CC" value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
<option data-code="CO" value="Colombia">Colombia</option>
<option data-code="KM" value="Comoros">Comoros</option>
<option data-code="CG" value="Congo">Congo - Brazzaville</option>
<option data-code="CD" value="Congo, The Democratic Republic Of The">Congo - Kinshasa</option>
<option data-code="CK" value="Cook Islands">Cook Islands</option>
<option data-code="CR" value="Costa Rica">Costa Rica</option>
<option data-code="HR" value="Croatia">Croatia</option>
<option data-code="CU" value="Cuba">Cuba</option>
<option data-code="CW" value="Curaçao">Curaçao</option>
<option data-code="CY" value="Cyprus">Cyprus</option>
<option data-code="CZ" value="Czech Republic">Czech Republic</option>
<option data-code="CI" value="Côte d&#39;Ivoire">Côte d’Ivoire</option>
<option data-code="DK" value="Denmark">Denmark</option>
<option data-code="DJ" value="Djibouti">Djibouti</option>
<option data-code="DM" value="Dominica">Dominica</option>
<option data-code="DO" value="Dominican Republic">Dominican Republic</option>
<option data-code="EC" value="Ecuador">Ecuador</option>
<option data-code="EG" value="Egypt">Egypt</option>
<option data-code="SV" value="El Salvador">El Salvador</option>
<option data-code="GQ" value="Equatorial Guinea">Equatorial Guinea</option>
<option data-code="ER" value="Eritrea">Eritrea</option>
<option data-code="EE" value="Estonia">Estonia</option>
<option data-code="ET" value="Ethiopia">Ethiopia</option>
<option data-code="FK" value="Falkland Islands (Malvinas)">Falkland Islands</option>
<option data-code="FO" value="Faroe Islands">Faroe Islands</option>
<option data-code="FJ" value="Fiji">Fiji</option>
<option data-code="FI" value="Finland">Finland</option>
<option data-code="FR" value="France">France</option>
<option data-code="GF" value="French Guiana">French Guiana</option>
<option data-code="PF" value="French Polynesia">French Polynesia</option>
<option data-code="TF" value="French Southern Territories">French Southern Territories</option>
<option data-code="GA" value="Gabon">Gabon</option>
<option data-code="GM" value="Gambia">Gambia</option>
<option data-code="GE" value="Georgia">Georgia</option>
<option data-code="DE" value="Germany">Germany</option>
<option data-code="GH" value="Ghana">Ghana</option>
<option data-code="GI" value="Gibraltar">Gibraltar</option>
<option data-code="GR" value="Greece">Greece</option>
<option data-code="GL" value="Greenland">Greenland</option>
<option data-code="GD" value="Grenada">Grenada</option>
<option data-code="GP" value="Guadeloupe">Guadeloupe</option>
<option data-code="GT" value="Guatemala">Guatemala</option>
<option data-code="GG" value="Guernsey">Guernsey</option>
<option data-code="GN" value="Guinea">Guinea</option>
<option data-code="GW" value="Guinea Bissau">Guinea-Bissau</option>
<option data-code="GY" value="Guyana">Guyana</option>
<option data-code="HT" value="Haiti">Haiti</option>
<option data-code="HM" value="Heard Island And Mcdonald Islands">Heard &amp; McDonald Islands</option>
<option data-code="HN" value="Honduras">Honduras</option>
<option data-code="HK" value="Hong Kong">Hong Kong SAR China</option>
<option data-code="HU" value="Hungary">Hungary</option>
<option data-code="IS" value="Iceland">Iceland</option>
<option data-code="IN" value="India">India</option>
<option data-code="ID" value="Indonesia">Indonesia</option>
<option data-code="IR" value="Iran, Islamic Republic Of">Iran</option>
<option data-code="IQ" value="Iraq">Iraq</option>
<option data-code="IE" value="Ireland">Ireland</option>
<option data-code="IM" value="Isle Of Man">Isle of Man</option>
<option data-code="IL" value="Israel">Israel</option>
<option data-code="IT" value="Italy">Italy</option>
<option data-code="JM" value="Jamaica">Jamaica</option>
<option data-code="JP" value="Japan">Japan</option>
<option data-code="JE" value="Jersey">Jersey</option>
<option data-code="JO" value="Jordan">Jordan</option>
<option data-code="KZ" value="Kazakhstan">Kazakhstan</option>
<option data-code="KE" value="Kenya">Kenya</option>
<option data-code="KI" value="Kiribati">Kiribati</option>
<option data-code="XK" value="Kosovo">Kosovo</option>
<option data-code="KW" value="Kuwait">Kuwait</option>
<option data-code="KG" value="Kyrgyzstan">Kyrgyzstan</option>
<option data-code="LA" value="Lao People&#39;s Democratic Republic">Laos</option>
<option data-code="LV" value="Latvia">Latvia</option>
<option data-code="LB" value="Lebanon">Lebanon</option>
<option data-code="LS" value="Lesotho">Lesotho</option>
<option data-code="LR" value="Liberia">Liberia</option>
<option data-code="LY" value="Libyan Arab Jamahiriya">Libya</option>
<option data-code="LI" value="Liechtenstein">Liechtenstein</option>
<option data-code="LT" value="Lithuania">Lithuania</option>
<option data-code="LU" value="Luxembourg">Luxembourg</option>
<option data-code="MO" value="Macao">Macau SAR China</option>
<option data-code="MK" value="Macedonia, Republic Of">Macedonia</option>
<option data-code="MG" value="Madagascar">Madagascar</option>
<option data-code="MW" value="Malawi">Malawi</option>
<option data-code="MY" value="Malaysia">Malaysia</option>
<option data-code="MV" value="Maldives">Maldives</option>
<option data-code="ML" value="Mali">Mali</option>
<option data-code="MT" value="Malta">Malta</option>
<option data-code="MQ" value="Martinique">Martinique</option>
<option data-code="MR" value="Mauritania">Mauritania</option>
<option data-code="MU" value="Mauritius">Mauritius</option>
<option data-code="YT" value="Mayotte">Mayotte</option>
<option data-code="MX" value="Mexico">Mexico</option>
<option data-code="MD" value="Moldova, Republic of">Moldova</option>
<option data-code="MC" value="Monaco">Monaco</option>
<option data-code="MN" value="Mongolia">Mongolia</option>
<option data-code="ME" value="Montenegro">Montenegro</option>
<option data-code="MS" value="Montserrat">Montserrat</option>
<option data-code="MA" value="Morocco">Morocco</option>
<option data-code="MZ" value="Mozambique">Mozambique</option>
<option data-code="MM" value="Myanmar">Myanmar (Burma)</option>
<option data-code="NA" value="Namibia">Namibia</option>
<option data-code="NR" value="Nauru">Nauru</option>
<option data-code="NP" value="Nepal">Nepal</option>
<option data-code="NL" value="Netherlands">Netherlands</option>
<option data-code="AN" value="Netherlands Antilles">Netherlands Antilles</option>
<option data-code="NC" value="New Caledonia">New Caledonia</option>
<option data-code="NZ" value="New Zealand">New Zealand</option>
<option data-code="NI" value="Nicaragua">Nicaragua</option>
<option data-code="NE" value="Niger">Niger</option>
<option data-code="NG" value="Nigeria">Nigeria</option>
<option data-code="NU" value="Niue">Niue</option>
<option data-code="NF" value="Norfolk Island">Norfolk Island</option>
<option data-code="KP" value="Korea, Democratic People&#39;s Republic Of">North Korea</option>
<option data-code="NO" value="Norway">Norway</option>
<option data-code="OM" value="Oman">Oman</option>
<option data-code="PK" value="Pakistan">Pakistan</option>
<option data-code="PS" value="Palestinian Territory, Occupied">Palestinian Territories</option>
<option data-code="PA" value="Panama">Panama</option>
<option data-code="PG" value="Papua New Guinea">Papua New Guinea</option>
<option data-code="PY" value="Paraguay">Paraguay</option>
<option data-code="PE" value="Peru">Peru</option>
<option data-code="PH" value="Philippines">Philippines</option>
<option data-code="PN" value="Pitcairn">Pitcairn Islands</option>
<option data-code="PL" value="Poland">Poland</option>
<option data-code="PT" value="Portugal">Portugal</option>
<option data-code="QA" value="Qatar">Qatar</option>
<option data-code="RE" value="Reunion">Réunion</option>
<option data-code="RO" value="Romania">Romania</option>
<option data-code="RU" value="Russia">Russia</option>
<option data-code="RW" value="Rwanda">Rwanda</option>
<option data-code="SX" value="Sint Maarten">Saint Martin</option>
<option data-code="WS" value="Samoa">Samoa</option>
<option data-code="SM" value="San Marino">San Marino</option>
<option data-code="ST" value="Sao Tome And Principe">São Tomé &amp; Príncipe</option>
<option data-code="SA" value="Saudi Arabia">Saudi Arabia</option>
<option data-code="SN" value="Senegal">Senegal</option>
<option data-code="RS" value="Serbia">Serbia</option>
<option data-code="SC" value="Seychelles">Seychelles</option>
<option data-code="SL" value="Sierra Leone">Sierra Leone</option>
<option data-code="SG" value="Singapore">Singapore</option>
<option data-code="SK" value="Slovakia">Slovakia</option>
<option data-code="SI" value="Slovenia">Slovenia</option>
<option data-code="SB" value="Solomon Islands">Solomon Islands</option>
<option data-code="SO" value="Somalia">Somalia</option>
<option data-code="ZA" value="South Africa">South Africa</option>
<option data-code="GS" value="South Georgia And The South Sandwich Islands">South Georgia &amp; South Sandwich Islands</option>
<option data-code="KR" value="South Korea">South Korea</option>
<option data-code="ES" value="Spain">Spain</option>
<option data-code="LK" value="Sri Lanka">Sri Lanka</option>
<option data-code="BL" value="Saint Barthélemy">St. Barthélemy</option>
<option data-code="SH" value="Saint Helena">St. Helena</option>
<option data-code="KN" value="Saint Kitts And Nevis">St. Kitts &amp; Nevis</option>
<option data-code="LC" value="Saint Lucia">St. Lucia</option>
<option data-code="MF" value="Saint Martin">St. Martin</option>
<option data-code="PM" value="Saint Pierre And Miquelon">St. Pierre &amp; Miquelon</option>
<option data-code="VC" value="St. Vincent">St. Vincent &amp; Grenadines</option>
<option data-code="SD" value="Sudan">Sudan</option>
<option data-code="SR" value="Suriname">Suriname</option>
<option data-code="SJ" value="Svalbard And Jan Mayen">Svalbard &amp; Jan Mayen</option>
<option data-code="SZ" value="Swaziland">Swaziland</option>
<option data-code="SE" value="Sweden">Sweden</option>
<option data-code="CH" value="Switzerland">Switzerland</option>
<option data-code="SY" value="Syria">Syria</option>
<option data-code="TW" value="Taiwan">Taiwan</option>
<option data-code="TJ" value="Tajikistan">Tajikistan</option>
<option data-code="TZ" value="Tanzania, United Republic Of">Tanzania</option>
<option data-code="TH" value="Thailand">Thailand</option>
<option data-code="TL" value="Timor Leste">Timor-Leste</option>
<option data-code="TG" value="Togo">Togo</option>
<option data-code="TK" value="Tokelau">Tokelau</option>
<option data-code="TO" value="Tonga">Tonga</option>
<option data-code="TT" value="Trinidad and Tobago">Trinidad &amp; Tobago</option>
<option data-code="TN" value="Tunisia">Tunisia</option>
<option data-code="TR" value="Turkey">Turkey</option>
<option data-code="TM" value="Turkmenistan">Turkmenistan</option>
<option data-code="TC" value="Turks and Caicos Islands">Turks &amp; Caicos Islands</option>
<option data-code="TV" value="Tuvalu">Tuvalu</option>
<option data-code="UM" value="United States Minor Outlying Islands">U.S. Outlying Islands</option>
<option data-code="UG" value="Uganda">Uganda</option>
<option data-code="UA" value="Ukraine">Ukraine</option>
<option data-code="AE" value="United Arab Emirates">United Arab Emirates</option>
<option data-code="GB" value="United Kingdom">United Kingdom</option>
<option data-code="US" value="United States">United States</option>
<option data-code="UY" value="Uruguay">Uruguay</option>
<option data-code="UZ" value="Uzbekistan">Uzbekistan</option>
<option data-code="VU" value="Vanuatu">Vanuatu</option>
<option data-code="VA" value="Holy See (Vatican City State)">Vatican City</option>
<option data-code="VE" value="Venezuela">Venezuela</option>
<option data-code="VN" value="Vietnam">Vietnam</option>
<option data-code="WF" value="Wallis And Futuna">Wallis &amp; Futuna</option>
<option data-code="EH" value="Western Sahara">Western Sahara</option>
<option data-code="YE" value="Yemen">Yemen</option>
<option data-code="ZM" value="Zambia">Zambia</option>
<option data-code="ZW" value="Zimbabwe">Zimbabwe</option></select>
  </div>
</div>
<input class="visually-hidden" autocomplete="billing address-level1" tabindex="-1" data-autocomplete-field="province" size="30" type="text" name="checkout[billing_address][province]" />
<div data-address-field="province" class="field--three-eights field field--required">
  <label class="field__label" for="checkout_billing_address_province">State</label>
  <div class="field__input-wrapper field__input-wrapper--select">
    <input placeholder="State" autocomplete="billing address-level1" data-backup="province" data-google-places="administrative_area_level_1" class="field__input" type="text" name="checkout[billing_address][province]" id="checkout_billing_address_province" />
  </div>
</div>
<input class="visually-hidden" autocomplete="billing postal-code" tabindex="-1" data-autocomplete-field="zip" size="30" type="text" name="checkout[billing_address][zip]" />
<div data-address-field="zip" class="field--quarter field field--required">
  <label class="field__label" for="checkout_billing_address_zip">Pincode</label>
  <div class="field__input-wrapper">
    <input placeholder="110034" autocomplete="billing postal-code" data-backup="zip" data-google-places="postal_code" class="field__input field__input--zip" size="30" type="text" name="checkout[billing_address][zip]" id="checkout_billing_address_zip" />
  </div>
</div>

          </div>
        </div>
      </div>
    </div>
  </div>



      </div>

      

<div class="step__footer">
    <input type="hidden" name="checkout[total_price]" id="checkout_total_price" value="10500" />
    <input type="hidden" name="complete" value="1" />

  <button name="button" type="submit" class="step__footer__continue-btn btn ">
  <span class="btn__content">Complete order</span>
  <i class="btn__spinner icon icon--button-spinner"></i>
</button>
  <a class="step__footer__previous-link" href="https://checkout.shopify.com/16375229/checkouts/4c4238a7b36088e58dc6a8f511f97b7e?step=shipping_method"><svg class="icon-svg icon-svg--color-accent icon-svg--size-10 previous-link__icon rtl-flip" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10"><path d="M8 1L7 0 3 4 2 5l1 1 4 4 1-1-4-4"/></svg><span class="step__footer__previous-link-content">Return to shipping method</span></a>
</div>


</form>
</div>

          </div>
          <div class="main__footer">
            <div class="modals">
</div>


<div role="contentinfo" aria-label="Footer">
    <p class="copyright-text">
      All rights reserved fashop-default
    </p>
</div>

<div id="dialog-close-title" class="hidden">Close</div>

          </div>
        </div>
      </div>
    </div>

    
      <script type="text/javascript">
        
      window.ShopifyAnalytics = window.ShopifyAnalytics || {};
      window.ShopifyAnalytics.meta = window.ShopifyAnalytics.meta || {};
      window.ShopifyAnalytics.meta.currency = 'USD';
      var meta = {"page":{"path":"\/checkout\/payment","search":"","url":"https:\/\/checkout.shopify.com\/16375229\/checkouts\/4c4238a7b36088e58dc6a8f511f97b7e?previous_step=shipping_method\u0026step=payment_method"}};
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
            script.src = 'js/trekkie.storefront.min.js?v=2017.03.29.1';
            var first = document.getElementsByTagName('script')[0];
            first.parentNode.insertBefore(script, first);
          };
          trekkie.load(
            {"Trekkie":{"appName":"checkout","development":false,"defaultAttributes":{"shopId":16375229}},"Performance":{"navigationTimingApiMeasurementsEnabled":true,"navigationTimingApiMeasurementsSampleRate":0.1},"Clickstream":{}}
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
          "Checkout - Payment",
          {"path":"\/checkout\/payment","search":"","url":"https:\/\/checkout.shopify.com\/16375229\/checkouts\/4c4238a7b36088e58dc6a8f511f97b7e?previous_step=shipping_method\u0026step=payment_method"}
        );
      
            
          });

          
      var eventsListenerScript = document.createElement('script');
      eventsListenerScript.async = true;
      eventsListenerScript.src = "js/shop_events_listener-0320d3eb7ceaecf62b48e0a1102174bde201a7230c8e40f7ef9f45401190ad6d.js";
      document.getElementsByTagName('head')[0].appendChild(eventsListenerScript);
    
        })();
      </script>
    
  </body>
</html>
