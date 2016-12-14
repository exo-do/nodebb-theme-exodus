
<script>
jQuery(document).ready(function($){
	//open the lateral panel
	$('.cd-btn').on('click', function(event){
		$('.cd-panel').addClass('is-visible');
	});
	//close the lateral panel
	$('.cd-panel').on('click', function(event){
		if( $(event.target).is('.cd-panel') || $(event.target).is('.cd-panel-close') ) {
			$('.cd-panel').removeClass('is-visible');
		}
	});
});
</script>

<script>
//var plantilla = '/api/category/{category.slug}';
var plantilla = '/api/recent';
	require(['translator'], function (translator) {
		$.getJSON(plantilla, function (json) {
			templates.parse('last', json, function (html) {
				translator.translate(html, function (translated) {
	  				$(translated).appendTo('#contenido');
	  	  		});
	  	  	});
	 	});
	});
</script>

<main class="cd-main-content">

<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header"></div>
<div class="row">
<div class="topic col-lg-12 col-sm-12" has-widget-class="topic col-lg-9 col-sm-12" has-widget-target="sidebar">

	<a href="#" class="cd-btn pull-right hidden"><i class="fa fa-clock-o"></i></a>

	<h1 component="post/header" class="" itemprop="name">

		<a href="{config.relative_path}/topic/{slug}">
				<i class="pull-left fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->" title="[[topic:pinned]]"></i>
				<i class="pull-left fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->" title="[[topic:locked]]"></i>
				<i class="pull-left fa fa-arrow-circle-right <!-- IF !oldCid -->hidden<!-- ENDIF !oldCid -->"  title="[[topic:moved]]"></i>
				<!-- BEGIN icons -->@value<!-- END icons -->
				<span class="topic-title" component="topic/title">{title}</span>
 		</a>

	</h1>

	<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>

	<hr class="visible-xs" />

	<!-- IF config.usePagination -->
	<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<ul component="topic" class="posts" data-tid="{tid}" data-cid="{cid}">
		<!-- BEGIN posts -->
			<li component="post" class="<!-- IF posts.deleted -->deleted <!-- ENDIF posts.deleted --><!-- IF posts.isOP --> highlight-op<!-- ENDIF posts.isOP --><!-- IF posts.isFollow --> highlight-fw<!-- ENDIF posts.isFollow -->" <!-- IMPORT partials/data/topic.tpl -->>
				<a component="post/anchor" data-index="{posts.index}" name="{posts.index}"></a>

				<meta itemprop="datePublished" content="{posts.timestampISO}">
				<meta itemprop="dateModified" content="{posts.editedISO}">

				<!-- IMPORT partials/topic/post.tpl -->
				<!-- IF !posts.index -->
 				<div class="post-bar-placeholder"></div>
 				<!-- ENDIF !posts.index -->
			</li>

		<!-- END posts -->

	</ul>

	<!-- IMPORT partials/topic/quickreply.tpl -->
</br>
	<div class="post-bar">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IF config.usePagination -->
	<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<div class="tags pull-left">
	<!-- BEGIN tags -->
	<a href="{config.relative_path}/tags/{tags.value}">
		<span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.value}</span>
		<span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
	<!-- END tags -->
	</div>

	<div class="visible-xs visible-sm pagination-block text-center">
		<div class="progress-bar"></div>
		<div class="wrapper">
			<!--<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop"></i>
			<i class="fa fa-2x fa-angle-up pointer fa-fw pageup"></i>
			<span class="pagination-text"></span>
			<i class="fa fa-2x fa-angle-down pointer fa-fw pagedown"></i>
			<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom"></i>-->
		</div>
	</div>

	</div>
	<div widget-area="sidebar" class="col-lg-3 col-sm-12 hidden"></div>
</div>

<div widget-area="footer"></div>
<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
</main>

<div class="cd-panel from-right">


	<div class="cd-panel-container">
		<div id="contenido" class="cd-panel-content">

		</div> <!-- cd-panel-content -->
	</div> <!-- cd-panel-container -->
</div> <!-- cd-panel -->
