% rebase('base.tpl')
<section role="main" class="content-body">
	<header class="page-header">
		<h2>Top 100 Movies by Genre</h2>
	
		<div class="right-wrapper pull-right">
			<ol class="breadcrumbs">
				<li>
					<a href="/">
						<i class="fa fa-home"></i>
					</a>
				</li>
				<li><span>Pages</span></li>
				<li><span>Top 100 By Genre</span></li>
			</ol>
	
			<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
		</div>
	</header>

	<!-- start: page -->
	<section class="panel">
			
		<section class="panel">
		%for row in rows:
			<div class="col-xs-6">
					<section class="panel panel-featured-left panel-featured-quartenary">
						<div class="panel-body">
							<div class="widget-summary">
								<div class="widget-summary-col widget-summary-col-icon">
									<div class="summary-icon bg-quartenary">
										<i class="fa fa-user"></i>
									</div>
								</div>
								<div class="widget-summary-col">
									<div class="summary">
										<h4 class="title"></h4>
										<div class="info">
											
											<div>
											<strong class="amount">{{row}}</strong>
											</div>
											
										</div>
									</div>
									<div class="summary-footer">
										<a href ="?genre={{row}}" class="text-muted text-uppercase">(view all)</a>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				%end 
		</section>
	<!-- end: page -->
