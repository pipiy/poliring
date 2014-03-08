$(document).ready(function(){


    $('.p2col .span6:even').addClass('no-margin-left');

    //prettyPhoto
    $('a[data-rel]').each(function() {
        $(this).attr('rel', $(this).data('rel'));
    });
    $("a[rel^='prettyPhoto']").prettyPhoto();


    $('.da-thumbs > li, .da-thumbs > article').hoverdir();

    //Menu
    $('.sf-sub-indicator').remove();
    (function() {
		var $menu = $('#menu ul'),
			optionsList = '<option value="" selected>Menu...</option>';

		$menu.find('li').each(function() {
			var $this   = $(this),
				$anchor = $this.children('a'),
				depth   = $this.parents('ul').length - 1,
				indent  = '';

			if( depth ) {
				while( depth > 0 ) {
					indent += ' - ';
					depth--;
				}
			}
			optionsList += '<option value="' + $anchor.attr('href') + '">' + indent + ' ' + $anchor.text() + '</option>';
		}).end()
		  .after('<select class="res-menu">' + optionsList + '</select>');

		$('.res-menu').on('change', function() {
			window.location = $(this).val();
		});
		
	})();
    
    $(".our-blog article").hover(function () {
    	$(this).find("img").stop(true, true).animate({ opacity: 0.7 }, 300);
    }, function() {
    	$(this).find("img").stop(true, true).animate({ opacity: 1 }, 300);
    });
    
    
	//Portfolio
  $('.da-thumbs > li, .da-thumbs > article, .da-thumbs > div').hoverdir();
  $("a[rel^='prettyPhoto']").prettyPhoto();
});


$(window).load(function() {

	$("#mainslider").flexslider({
		animation: "slide",
		useCSS: false,
		//controlNav: false,
		animationLoop: false,
		smoothHeight: true
	});

    $(function () {
        $(".lightbox-image").append("<span></span>");
        $(".lightbox-image").hover(function () {
            $(this).find("img").stop().animate({opacity:0.5}, "normal")
        }, function () {
            $(this).find("img").stop().animate({opacity:1}, "normal")
        })
    });

    $('#top-menu .top-line .btn').click(function(){
        $('#top-menu .top-line .block').html('');
    });

});