// remap jQuery to $
(function($){})(window.jQuery);

$(document).ready(function (){

  /*
    START STRICT MODE
  */
  'use strict';

/*-----------------------------------------------------------------------------------*/
/*  FOOTER COPYRIGHT YEAR
/*-----------------------------------------------------------------------------------*/
  var currentYear = (new Date).getFullYear();
  $('span.date').text(currentYear);

/*-----------------------------------------------------------------------------------*/
/*  ADD ACTIVE CLASS TO MAIN NAVIGATION ITEMS BASED ON URL
/*-----------------------------------------------------------------------------------*/
  $(function() {
    var pgurl = window.location.href.substr(window.location.href.lastIndexOf("/")+1);
    $("#main-nav ul li a").each(function(){
      if($(this).attr("href") == pgurl || $(this).attr("href") == '' )
      $(this).addClass("active");
    });
  });

/*-----------------------------------------------------------------------------------*/
/*  RESPONSIVE NAVIGATION
/*-----------------------------------------------------------------------------------*/
  $('#main-nav ul').slicknav({
    prependTo:'.mobile-menu',
    label: '<img src="/assets/icons/burger.svg"/>',
    //label: 'menu',
    closeOnClick: true
  });

/*-----------------------------------------------------------------------------------*/
/*  HOMEPAGE TOP SLIDER & INNER PAGES SLIDER
/*-----------------------------------------------------------------------------------*/
  $('#home-slider, .inner-slider').slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    dots: false,
    arrows: false,
    fade: true,
    autoplay: true,
    autoplaySpeed: 4000
  });


  /* uploadfive */
  $('#item_image').uploadifive({

      'uploadScript' : '/photo/uploader.json',
      'formData' : {'authenticity_token': $('input[name=authenticity_token]').val(), 'item_id': '<%= @item.id %>'},
      'fileTypeDesc' : 'Arquivos de Imagem',
      'fileTypeExts' : '*.gif; *.jpg; *.jpeg; *.png',
      'buttonText': 'Selecionar Arquivos',
      'buttonClass'  : 'item-button',
      'height'        : 46,
      'uploadLimit' : 5,
      'onUploadComplete' : function(file, data, response) {
          var json = JSON.parse(data),
              template = '<div class="photo small-4 columns">' +
                  '<input type="hidden" name="item[photo_ids][]" value="' + parseInt(json.id) + '" />' +
                  '<img src="' + json.url + '" >' +
                  '</div>';

          $('#uploaded_photos').append(template);
          $('#uploadifive-item_image-queue').hide();
      }
  });

/*-----------------------------------------------------------------------------------*/
/*  GAMES PAGE LITEBOX (GALLERY)
/*-----------------------------------------------------------------------------------*
  $('.game-gallery').LiteBox({
    revealSpeed: 400,
    background: 'rgba(0,0,0,.8)',
    overlayClose: true,
    escKey: true,
    navKey: true,
    errorMessage: 'Error loading content.'
  });
*/
});

/*-----------------------------------------------------------------------------------*/
/*  CONTACT FORM
/*-----------------------------------------------------------------------------------*/
$(document).ready(function (){
  $("#ajax-contact-form").submit(function() {
    var str = $(this).serialize();

    $.ajax({
      type: "POST",
      url: "includes/contact-process.php",
      data: str,
      success: function(msg) {
          // Message Sent? Show the 'Thank You' message
          if(msg == 'OK') {
            result = '<div class="notification_ok">Your message has been sent. Thank you!</div>';
          } else {
            result = msg;
          }
          $('#note').html(result);
      }
    });
    return false;
  });
});



/*-----------------------------------------------------------------------------------*/
/*  pretty lightbox and others
/*-----------------------------------------------------------------------------------*/
$(document).ready(function(){
  $(".gallery a[rel^='prettyPhoto']").prettyPhoto();

  <!-- Menu Toggle Script -->
    $("#menu-toggle2").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
        $(".slicknav_collapsed").toggle();

    });
    var oDropdown = $("#item_collection_id").msDropdown().data("dd");
    var oDropdown = $("#collection_id").msDropdown().data("dd");
});
