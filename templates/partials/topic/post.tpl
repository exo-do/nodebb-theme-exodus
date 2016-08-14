<div class="post-header">
	<div class="username">
		<strong>
			<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
		</strong>
		<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>

	</div>

	<span class="index"><strong>{posts.index}</strong></span>
</div>

<div class="box">

	<div class="post-details">

		<div class="icon pull-left hidden-xs">
			<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
				<!-- IF posts.user.picture -->
				<img component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" align="left" itemprop="image" />
				<!-- ELSE -->
				<div component="user/picture" data-uid="{posts.user.uid}" class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
				<!-- ENDIF posts.user.picture -->

			</a>
		</div>

		<div class="userinfo-extra hidden-xs">

			<!-- IF posts.user.custom_profile_info.length -->
			<!-- BEGIN custom_profile_info -->
			<!-- IF posts.user.custom_profile_info.joindate -->
			</br></br><span>{posts.user.custom_profile_info.joindate}</span></br>
			<!-- ENDIF posts.user.custom_profile_info.joindate -->
			<!-- END custom_profile_info -->
			<!-- ENDIF posts.user.custom_profile_info.length -->
			<i class='fa fa-star'></i> <span component="user/reputation" data-reputation="{posts.user.reputation}" data-uid="{posts.uid}" class='formatted-number reputation'>{posts.user.reputation}</span>&nbsp;|&nbsp;
			<i class='fa fa-pencil'></i> <span class='formatted-number' component="user/postcount" data-uid="{posts.uid}" data-postcount="{posts.user.postcount}">{posts.user.postcount}</span>

			<div class="group-badge">
				<!-- IMPORT partials/topic/badge.tpl -->
			</div>
			<!-- IF posts.user.banned -->
			<span class="label label-danger">[[user:banned]]</span>
			<!-- ENDIF posts.user.banned -->
		</div>
	</div>

	<div class="right-content">
	<div class="content" component="post/content" itemprop="text">
		<!-- IF posts.toPid -->
		<button component="post/parent" class="btn btn-xs btn-default hidden-xs" data-topid="{posts.toPid}"><i class="fa fa-reply"></i> @<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></button>
  		<!-- ENDIF posts.toPid -->

		{posts.content}

	</div>
	<div class="sub-content post-footer">
	<div class="time">
		<p>
			<a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>
			<i class="fa fa-pencil-square pointer edit-icon <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"></i>
			<small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></small>
			</small>
			</p>
	</div>
	<!-- IF posts.user.signature -->
	<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature hidden-xs">{posts.user.signature}</div>
	<!-- ENDIF posts.user.signature -->
	</div>
	</div>
</div>



<div class="links-bar">

	<small>
		<span class="post-tools">
			<a component="post/reply" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-reply"></i>&nbsp;&nbsp;[[topic:reply]]</a>
			<a component="post/quote" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-quote-left"></i>&nbsp;&nbsp;[[topic:quote]]</a>
		</span>

		<!-- IF !reputation:disabled -->
		<span class="votes">
			<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
				<i class="fa fa-chevron-up"></i>
			</a>

			<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

			<!-- IF !downvote:disabled -->
			<a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
				<i class="fa fa-chevron-down"></i>
			</a>
			<!-- ENDIF !downvote:disabled -->

		</span>
		<!-- ENDIF !reputation:disabled -->


		<!-- IMPORT partials/topic/post-menu.tpl -->
	</small>
</div>

<hr />
<br />
