<!-- IF config.usePagination -->
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
		keyboardNavBy: 'items',
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
<!-- ENDIF config.usePagination -->

<div class="category">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<!-- IMPORT partials/category/subcategory.tpl -->

	<!-- IF children.length --><hr class="hidden-xs"/><!-- ENDIF children.length -->

	<div class="clearfix">
		<!-- IF privileges.topics:create -->
		<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
		<!-- ELSE -->
			<!-- IF !loggedIn -->
			<a href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF !loggedIn -->
		<!-- ENDIF privileges.topics:create -->

		<span class="pull-right">
			<!-- IMPORT partials/category/watch.tpl -->
			<!-- IMPORT partials/category/tools.tpl -->
			<!-- IMPORT partials/category/sort.tpl -->
		</span>
	</div>

	<hr class="hidden-xs" />

	<div class="category-bar"><p class="hidden-xs">{name}</p></div>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->

	<!-- IMPORT partials/topics_list.tpl -->

	
	<!-- IF config.usePagination -->
	<div class="example <!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
	<div class="scrollbar visible-xs">
		<div class="handle">
			<div class="mousearea"></div>
		</div>
	</div>
	<button class="backward"><a href="?page=1"><i class="fa fa-angle-double-left"></i></a></button>
	<button class="forward"><a href="?page={pagination.pageCount}"><i class="fa fa-angle-double-right"></i></a></button>
	
	<div id="basic" class="frame text-center pagination-container">
	<ul class="slidee">
	
	<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
	
	
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->

