<ul component="category" class="topic-list" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	<meta itemprop="itemListOrder" content="descending">
	<!-- BEGIN topics -->
	<li component="category/topic" class="row clearfix {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<meta itemprop="name" content="{function.stripTags, title}">

		<div class="col-lg-7 col-md-7 col-sm-9 col-xs-11 content">
			<div class="avatar pull-left" title="{topics.user.username}">
				<!-- IF showSelect -->
				<div class="select" component="topic/select">
					<!-- IF topics.thumb -->
 					<img src="{topics.thumb}" class="user-img" />
 					<!-- ELSE -->
					<!-- IF topics.user.picture -->
					<img component="user/picture" data-uid="{topics.user.uid}" src="{topics.user.picture}" class="user-img"/>
					<!-- ELSE -->
					<div class="user-icon" style="background-color: {topics.user.icon:bgColor};">{topics.user.icon:text}</div>
					<!-- ENDIF topics.user.picture -->
					<!-- ENDIF topics.thumb -->
					<i class="fa fa-check"></i>
				</div>
				<!-- ENDIF showSelect -->

				<!-- IF !showSelect -->
				<a href="{config.relative_path}/topic/{topics.slug}<!-- IF topics.bookmark -->/{topics.bookmark}<!-- ENDIF topics.bookmark -->" class="pull-left">
					<!-- IF topics.thumb -->
 					<img src="{topics.thumb}" class="user-img" />
 					<!-- ELSE -->
					<!-- IF topics.user.picture -->
					<img component="user/picture" data-uid="{topics.user.uid}" src="{topics.user.picture}" class="user-img" />
					<!-- ELSE -->
					<div class="user-icon" style="background-color: {topics.user.icon:bgColor};" >{topics.user.icon:text}</div>
					<!-- ENDIF topics.user.picture -->
					<!-- ENDIF topics.thumb -->
				</a>
				<!-- ENDIF !showSelect -->
			</div>

			<h2 component="topic/header" class="title">

				<!-- IF !topics.noAnchor -->
				<div class="topictitle">
					<a href="{config.relative_path}/topic/{topics.slug}<!-- IF topics.bookmark -->/{topics.bookmark}<!-- ENDIF topics.bookmark -->" itemprop="url">
					<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->" title="[[topic:pinned]]"></i>
					<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->" title="[[topic:locked]]"></i>
					<i component="topic/moved" class="fa fa-arrow-circle-right <!-- IF !topics.oldCid -->hide<!-- ENDIF !topics.oldCid -->" title="[[topic:moved]]"></i>
					<!-- BEGIN icons -->@value<!-- END icons -->
					 {topics.title}</a>
				</div>
				<!-- ELSE -->
				<div class="topictitle">
					<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->" title="[[topic:pinned]]"></i>
					<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->" title="[[topic:locked]]"></i>
					<i component="topic/moved" class="fa fa-arrow-circle-right <!-- IF !topics.oldCid -->hide<!-- ENDIF !topics.oldCid -->" title="[[topic:moved]]"></i>
					<!-- BEGIN icons -->@value<!-- END icons -->
					 {topics.title}
				</div>
				<!-- ENDIF !topics.noAnchor -->

				<!-- IF !template.category -->
				<small class="hidden-xs">
					<a href="{config.relative_path}/category/{topics.category.slug}" title="{topics.category.name}">
						<span> {topics.category.name}</span>
					</a>&bull;
				</small>

				<small class="visible-xs-inline">
				<a href="{config.relative_path}/category/{topics.category.slug}" title="{topics.category.name}">
					<span class="fa-stack fa-lg visible-xs-inline"><i style="color:{topics.category.bgColor};"class="fa fa-circle fa-stack-2x"></i><i style="color:{topics.category.color};" class="fa {topics.category.icon} fa-stack-1x"></i></span>
				</a>
				</small>
				<!-- ENDIF !template.category -->
				<!--
				<!-- IF topics.tags.length -->
				<span class="tag-list hidden-xs">
					<!-- BEGIN tags -->
					<a href="{config.relative_path}/tags/{topics.tags.value}"><span class="tag" style="<!-- IF topics.tags.color -->color: {topics.tags.color};<!-- ENDIF topics.tags.color --><!-- IF topics.tags.bgColor -->background-color: {topics.tags.bgColor};<!-- ENDIF topics.tags.bgColor -->">{topics.tags.value}</span></a>
					<!-- END tags -->
					<small>&bull;</small>
				</span>
				<!-- ENDIF topics.tags.length -->
				-->

				<small><a href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">{topics.user.username}</a> &bull;</small>
				<small class="hidden-xs"><span class="timeago" title="{topics.timestampISO}"></span></small>

				<small class="visible-xs-inline">
					<!-- IF topics.teaser.timestamp -->
					<span class="timeago" title="{topics.teaser.timestampISO}"></span>
					<!-- ELSE -->
					<span class="timeago" title="{topics.timestampISO}"></span>
					<!-- ENDIF topics.teaser.timestamp -->
				</small>
			</h2>
		</div>

		<div class="mobile-stat col-xs-1 visible-xs text-right">
			<a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
				<span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="human-readable-number fa fa-inverse fa-stack-1x">{topics.postcount}</i></span>
			</a>
		</div>

		<div class="col-lg-1 col-md-1 hidden-sm hidden-xs stats">
			<span>
				<!-- IF !template.category -->
					<a href="{config.relative_path}/category/{topics.category.slug}"  title="{topics.category.name}"><span class="fa-stack fa-lg"><i style="color:{topics.category.bgColor};"class="fa fa-circle fa-stack-2x"></i><i style="color:{topics.category.color};" class="fa {topics.category.icon} fa-stack-1x"></i></span></a>
				<!-- ENDIF !template.category -->
			</span>
		</div>

		<div class="col-lg-1 col-md-1 hidden-sm hidden-xs stats">
			<span class="human-readable-number" title="{topics.postcount}">{topics.postcount}</span><br />
			<small>[[global:posts]]</small>
		</div>

		<div class="col-lg-1 col-md-1 hidden-sm hidden-xs stats">
			<span class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span><br />
			<small>[[global:views]]</small>
		</div>

		<div class="col-lg-2 col-md-2 col-sm-3 teaser hidden-xs" component="topic/teaser">
			<div class="card" style="border-color: {topics.category.bgColor}">
				<!-- IF topics.unreplied -->
				<p>
					[[category:no_replies]]
				</p>
				<!-- ELSE -->
				<!-- IF topics.teaser.pid -->
				<p>
					<a href="{config.relative_path}/user/{topics.teaser.user.userslug}">
						{topics.teaser.user.username}
						<!--<!-- IF topics.teaser.user.picture -->
						<img title="{topics.teaser.user.username}" class="user-img" src="{topics.teaser.user.picture}" />
						<!-- ELSE -->
						<span title="{topics.teaser.user.username}" class="user-icon user-img" style="background-color: {topics.teaser.user.icon:bgColor};">{topics.teaser.user.icon:text}</span>
						<!-- ENDIF topics.teaser.user.picture -->
						-->
					</a>
					<a class="permalink" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
						<span class="timeago" title="{topics.teaser.timestampISO}"></span>
					</a>
				</p>
				<div class="post-content">
					{topics.teaser.content}
				</div>
				<!-- ENDIF topics.teaser.pid -->
				<!-- ENDIF topics.unreplied -->
			</div>
		</div>
	</li>
	<!-- END topics -->
</ul>
