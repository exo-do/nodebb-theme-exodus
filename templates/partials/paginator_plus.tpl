<script type="text/javascript">

jQuery(function ($) {

	'use strict';

	(function () {
	var $frame  = $('#basic');
	var $slidee = $frame.children('ul').eq(0);
	var $wrap   = $frame.parent();



	var options = {
	  	horizontal: 1,
		itemNav: 'basic',
		smart: 1,
		activateOn: 'click',
		mouseDragging: 1,
		touchDragging: 1,
		releaseSwing: 1,
		scrollBar: $wrap.find('.scrollbar'),
		scrollBy: 2,
		scrollTrap: true,
		pagesBar: $wrap.find('.pages'),
		activatePageOn: 'click',
		speed: 200,
		moveBy: 300,
		elasticBounds: 1,
		dragHandle: 1,
		dynamicHandle: 1,
		clickBar: 1,
		prevPage: $wrap.find('.prevPage'),
		nextPage: $wrap.find('.nextPage')

  	};


	var fn,fn1,fn2;
  	var sly = new Sly('#basic', options, {
    	load: function () {
    		this.activate(this.getIndex($wrap.find('.active')));
		},
		move: [
			function () {},
	        function () {}
		]
    }).init();

	}());
});
</script>
