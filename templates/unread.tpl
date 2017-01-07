	<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="unread-div">

	<div class="btn-toolbar">
		<div class="pull-left">
 			<!-- IF loggedIn -->
 			<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
 			<!-- ELSE -->
 			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
 			<!-- ENDIF loggedIn -->
 		</div>
		<div class="markread btn-group pull-right<!-- IF !topics.length --> hidden<!-- ENDIF !topics.length --> bottom-sheet">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				<i class="fa fa-check-square-o visible-xs-inline" aria-hidden="true"></i><span class="hidden-xs">[[unread:mark_as_read]]</span> <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<label for="presentation" class="visible-xs-inline"> [[unread:mark_as_read]] </label>
				<li role="presentation">
					<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
				</li>

				<li role="presentation">
					<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
				</li>
				<li class="divider"></li>
				<!-- BEGIN categories -->
				<li role="presentation" class="category" data-cid="{categories.cid}">
					<a role="menu-item" href="#">{categories.level}<!-- IF categories.icon --><i class="fa fa-fw {categories.icon}"></i><!-- ENDIF categories.icon --> {categories.name}</a>
				</li>
				<!-- END categories -->
			</ul>
		</div>

		<div class="btn-group pull-right bottom-sheet">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				<!-- IF selectedCategory --><!-- IF selectedCategory.icon --><i class="fa fa-fw {selectedCategory.icon}"></i><!-- ENDIF selectedCategory.icon --><span class="hidden-xs"> {selectedCategory.name}</span><!-- ELSE -->
				<i class="fa fa-filter visible-xs-inline" aria-hidden="true"></i><span class="hidden-xs">[[unread:all_categories]]</span><!-- ENDIF selectedCategory --> <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li role="presentation" class="category">
					<a role="menu-item" href="{config.relative_path}/{selectedFilter.url}"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
				</li>
				<!-- BEGIN categories -->
				<li role="presentation" class="category" data-cid="{categories.cid}">
					<a role="menu-item" href="{config.relative_path}/{selectedFilter.url}?cid={categories.cid}"><i class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i>{categories.level}<!-- IF categories.icon --><i class="fa fa-fw {categories.icon}"></i><!-- ENDIF categories.icon --> {categories.name}</a>
				</li>
				<!-- END categories -->
			</ul>
		</div>

		<div class="btn-group pull-right bottom-sheet">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			<i class="fa fa-bars visible-xs-inline" aria-hidden="true"></i><span class="hidden-xs">{selectedFilter.name}</span> <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<!-- BEGIN filters -->
				<li role="presentation" class="category">
					<a role="menu-item" href="{config.relative_path}/{filters.url}{querystring}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
				</li>
				<!-- END filters -->
			</ul>
		</div>
	</div>

	<hr class="hidden-xs"/>

	<div class="category">
		<div class="category-bar"><p class="hidden-xs">[[pages:unread]]</p></div>
		<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">[[unread:no_unread_topics]]</div>

		<a href="{config.relative_path}/{selectedFilter.url}{querystring}">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
