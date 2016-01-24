<!--<div class="text-center pagination-container<!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
	<ul class="pagination">
		<li class="previous pull-left<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
			<a href="?{pagination.prev.qs}" data-page="{pagination.prev.page}"><i class="fa fa-chevron-left"></i> </a>
		</li>

		<!-- BEGIN pages -->
			<!-- IF pagination.pages.separator -->
			<li class="page select-page">
				<a href="#"><i class="fa fa-ellipsis-h"></i></a>
			</li>
			<!-- ELSE -->
			<li class="page<!-- IF pagination.pages.active --> active<!-- ENDIF pagination.pages.active -->" >
				<a href="?{pagination.pages.qs}" data-page="{pagination.pages.page}">{pagination.pages.page}</a>
			</li>
			<!-- ENDIF pagination.pages.separator -->
		<!-- END pages -->

		<li class="next pull-right<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
			<a href="?{pagination.next.qs}" data-page="{pagination.next.page}"> <i class="fa fa-chevron-right"></i></a>
		</li>
	</ul>
</div>
-->


	<!--<ul class="pagination clearfix">-->

			<!-- BEGIN pages -->
			<!-- IF pagination.pages.separator -->
			<li class="page select-page">
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

	<!--<ul class="pages"></ul>-->
	
 	<div class="controls">
	
		
 				<button class="toStart"><a href="?page=1"><i class="fa fa-angle-double-left"></i>Start</a></button>
 				<span class="divider hidden-xs"></span>
 				<button class="prev"><a href="?{pagination.prev.qs}" style="display:block;"><i class="fa fa-angle-left"></i> Prev</a></button>
 				<span class="divider hidden-xs"></span>
 				<button class="next"><a href="?{pagination.next.qs}"  style="display:block;">Next <i class="fa fa-angle-right"></i></a></button>
 				<span class="divider hidden-xs"></span>
				<button class="toEnd"><a id="end" href="?page={pagination.pageCount}"  style="display:block;">End <i class="fa fa-angle-double-right"></i></button>
 	</div>