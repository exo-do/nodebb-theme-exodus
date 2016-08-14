
<ol class="breadcrumb">
	<!-- BEGIN breadcrumbs -->
	<li<!-- IF @last --> component="breadcrumb/current"<!-- ENDIF @last --> itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" <!-- IF @last -->class="active"<!-- ENDIF @last -->>
		<!-- IF !@last --><a href="{breadcrumbs.url}" itemprop="url"><!-- ENDIF !@last -->
			<span itemprop="title">
				<!-- IF @last -->
				<!-- IF template.topic -->
				[[topic:topic]]
				<!-- ELSE -->
					{breadcrumbs.text}
				<!-- ENDIF template.topic -->

				<!-- IF !feeds:disableRSS -->
				<!-- IF rssFeedUrl --><a target="_blank" href="{rssFeedUrl}"><i class="fa fa-rss-square"></i></a><!-- ENDIF rssFeedUrl --><!-- ENDIF !feeds:disableRSS -->
				<!-- ELSE -->
					{breadcrumbs.text}
				<!-- ENDIF @last -->
			</span>
		<!-- IF !@last --></a><!-- ENDIF !@last -->
	</li>
	<!-- END breadcrumbs -->
</ol>

<!--
<!-- IF breadcrumbs.length -->
<!-- ENDIF breadcrumbs.length -->
-->
