% rebase('base.tpl', title='Python')
<section role="main" class="content-body">
	<header class="page-header">
		<h2>My Watchlist</h2>
	
		<div class="right-wrapper pull-right">
			<ol class="breadcrumbs">
				<li>
					<a href="/">
						<i class="fa fa-home"></i>
					</a>
				</li>
				<li><span>User</span></li>
				<li><span>My Watchlist</span></li>
			</ol>
	
			<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
		</div>
	</header>

	<!-- start: page -->
	<section class="panel">
			
		<section class="panel">
			<header class="panel-heading">
				<div class="panel-actions">
					<a href="#" class="fa fa-caret-down"></a>
					<a href="#" class="fa fa-times"></a>
				</div>
		
				<h2 class="panel-title">List of Movies</h2>
			</header>
			<div class="panel-body">
				<table class="table table-bordered table-striped mb-none" id="datatable-default">
					<thead>
						<tr>
							<th class="center">Title</th>
							<th class="center">Genre</th>
							<th class="center">Rating</th>
							<th class="center">Votes</th>
							<th class="center">Release Date</th>
							<th class="center">Adults</th>
						</tr>
					</thead>
					<tbody>
						%for row in rows:
						<tr>
							%for col in row:
							<td class="center">{{col}}</td>
							%end
						</tr>
						%end
					</tbody>
				</table>
			</div>
		</section>
	<!-- end: page -->
