
<script>
jQuery(document).ready(function($){
	//open the lateral panel
	$('.cd-btn').on('click', function(event){
		event.preventDefault();
		$('.cd-panel').addClass('is-visible');
	});
	//clode the lateral panel
	$('.cd-panel').on('click', function(event){
		if( $(event.target).is('.cd-panel') || $(event.target).is('.cd-panel-close') ) {
			$('.cd-panel').removeClass('is-visible');
			event.preventDefault();
		}
	});
});
</script>

<script>
	require(['translator'], function (translator) {
		$.getJSON('/api/recent', function (json) {
			templates.parse('recent', json, function (html) {
				translator.translate(html, function (translated) {
	  				$(translated).appendTo('#contenido');
	  	  		});
	  	  	});
	 	});
	});
</script>

<main class="cd-main-content">

<div class="popular">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<a href="#0" class="cd-btn pull-right">Fire Panel</a>
	<ul class="nav nav-pills" component="popular/tab">
		<li><a href='{config.relative_path}/popular/daily'>[[recent:day]]</a></li>
		<li><a href='{config.relative_path}/popular/weekly'>[[recent:week]]</a></li>
		<li><a href='{config.relative_path}/popular/monthly'>[[recent:month]]</a></li>
	</ul>

	<br />

	<div class="category">
		<div class="category-bar"><p class="hidden-xs">[[global:header.popular]]</p></div>
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_popular_topics]]</div>
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->
	</div>
</div>
</main>

<div class="cd-panel from-right">


	<div class="cd-panel-container">
		<div id="contenido" class="cd-panel-content">

		</div> <!-- cd-panel-content -->
	</div> <!-- cd-panel-container -->
</div> <!-- cd-panel -->
