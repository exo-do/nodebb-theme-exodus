
<div class="tag">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IF !topics.length -->
	<div class="alert alert-warning">[[tags:no_tag_topics]]</div>
	<!-- ENDIF !topics.length -->

	<div class="category">
		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator_plus.tpl -->
			<div class="example <!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
			<div class="scrollbar visible-xs">
				<div class="handle">
					<div class="mousearea"></div>
				</div>
			</div>
			<div class="backward"><a href="?page=1"><i class="fa fa-angle-double-left"></i></a></div>
			<div class="forward"><a href="?page={pagination.pageCount}"><i class="fa fa-angle-double-right"></i></a></div>

			<div id="basic" component="pagination" class="frame text-center pagination-container">
			<ul class="slidee">
 			<!-- IMPORT partials/paginator.tpl -->
 		<!-- ENDIF config.usePagination -->
	</div>
</div>
