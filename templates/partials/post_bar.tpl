<div class="clearfix">
	
	<div class="pull-left">
		<!-- IMPORT partials/topic/reply-button.tpl -->
	</div>

	<div class="topic-main-buttons pull-right">
		<span class="loading-indicator btn pull-left hidden" done="0">
			<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
		</span>

		<!-- IMPORT partials/topic/stats.tpl -->


		<!-- IMPORT partials/topic/watch.tpl -->
		<!-- IF loggedIn -->
		<button component="topic/mark-unread" class="btn btn-default">
 			<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:mark_unread]]</span> <i class="fa fa-inbox"></i>
 		</button>
		<!-- ENDIF loggedIn -->

		<!-- IMPORT partials/topic/sort.tpl -->

		<!-- IMPORT partials/thread_tools.tpl -->
	</div>
</div>
<br />
