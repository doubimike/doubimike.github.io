requirejs.config({
	paths:{
		jquery:'jquery-1.12.2.min',
		fullPage:'jquery.fullPage.min',
		velocity:'velocity.min',
		velocityui:'velocity.ui'
	}
});

requirejs(['jquery','fullPage','velocity','velocityui'],function($,fullpage,velocity,velocityui) {
	 $('#fullpage').fullpage();
});