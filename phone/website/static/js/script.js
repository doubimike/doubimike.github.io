function init () {
	$('.page').height($(window).height());
}

init();

$(window).on('resize', function() {
		init();
});

$(window).on('scroll', function() {
		hideHeader();
		if ($(window).scrollTop()==0) {
			showHeader();
		}
});

function hideHeader () {
	 $('.header').hide(); 
}

function showHeader () {
	 $('.header').show(); 
}

// ajax
$('.name-input').on('keyup', function(e) {
	e.preventDefault();
	value = $('.name-input').val();
	$.get('/register',{value:value},function (data) {
		  $('.tips').innerHTML = data
	});
	
});