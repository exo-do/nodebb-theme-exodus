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

<div class="example <!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
<div class="scrollbar ">
	<div class="handle">
		<div class="mousearea"></div>
	</div>
</div>
<div class="backward"><a href="?page=1"><i class="fa fa-angle-double-left"></i></a></div>
<div class="forward"><a href="?page={pagination.pageCount}"><i class="fa fa-angle-double-right"></i></a></div>

<div id="basic" class="frame text-center pagination-container<!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
<ul class="slidee">

			<!-- BEGIN pages -->
			<!-- IF pagination.pages.separator -->
			<li component="pagination/select-page" class="page select-page">
				<a href="#" style="display:block;"><i class="fa fa-ellipsis-h"></i></a>
			</li>
			<!-- ELSE -->
			<li class="page<!-- IF pagination.pages.active --> active<!-- ENDIF pagination.pages.active -->" >
				<a href="?{pagination.pages.qs}" data-page="{pagination.pages.page}" style="display:block;">{pagination.pages.page}</a>
			</li>
			<!-- ENDIF pagination.pages.separator -->

			<!-- END pages -->
	</ul>

</div>
</div>
