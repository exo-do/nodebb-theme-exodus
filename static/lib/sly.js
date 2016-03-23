'use strict';
(function () {	
	console.log('nodebb-plugin-quickstart: loaded');
	
	var Tema = {
		
		posteando: function (postdata) {
			console.log('ok');
		}
	};
	
	$(window).on('action:ajaxify.contentLoaded', function () { 
			console.log('hueheh');
	});
	
	
	function dark(){
		
	console.log('dark');
	
	};
	
	$(window).on('action:categories.loaded', dark);
	
	app.darModeTest = dark();	
	
	
});	