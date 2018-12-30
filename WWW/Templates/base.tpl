<!doctype html>
<html class="fixed sidebar-left-collapsed">
	<head>

		<!-- Basic -->
		<meta charset="utf-8" />
		<meta http-equiv="content-language" content="pl" />
		<meta name="robots" content="index, follow" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title>Movies: Python Searching Engine</title>

		<meta name="keywords" content="" />
		<meta name="description" content="">
		<meta name="author" content="Michał Szałański, Korneliusz Krysiak">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Search Bar-->
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
		<link rel="stylesheet" href="assets/vendor/morris/morris.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>

		<!--Search Bar-->
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	</head>
	<body>
		<section class="body">

			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="../" class="logo">
						<img src="assets/images/WNE_Logo.jpg" height="45" width="200" alt="" />
					</a>
					<div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right">
			
					<form action="pages-search-results.html" class="search nav-form">
						<div class="input-group input-search">
							<input type="text" class="form-control" name="q" id="q" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
							</span>
						</div>
					</form>
			
					<span class="separator"></span>
			
					<ul class="notifications">
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-tasks"></i>
								<span class="badge">3</span>
							</a>
			
							<div class="dropdown-menu notification-menu large">
								<div class="notification-title">
									<span class="pull-right label label-default">3</span>
									Actions
								</div>
			
								<div class="content">
									<ul>
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Recently Watched</span>
												<span class="message pull-right text-dark">Matrix</span>
											</p>
											<div class="progress progress-xs light">
												<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
											</div>
										</li>
			
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Progress</span>
												<span class="message pull-right text-dark">20%</span>
											</p>
											<div class="progress progress-xs light">
												<div class="progress-bar" role="progressbar" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div>
											</div>
										</li>
			
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Average rate</span>
												<span class="message pull-right text-dark">7.6</span>
											</p>
											<div class="progress progress-xs light mb-xs">
												<div class="progress-bar" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width: 76%;"></div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-bell"></i>
								<span class="badge">3</span>
							</a>
			
							<div class="dropdown-menu notification-menu">
								<div class="notification-title">
									<span class="pull-right label label-default">3</span>
									Alerts
								</div>
			
								<div class="content">
									<ul>
										<li>
											<a href="#" class="clearfix">
												<div class="image">
													<i class="fa fa-thumbs-down bg-danger"></i>
												</div>
												<span class="title">Server is Down!</span>
												<span class="message">Just now</span>
											</a>
										</li>
										<li>
											<a href="#" class="clearfix">
												<div class="image">
													<i class="fa fa-lock bg-warning"></i>
												</div>
												<span class="title">User Locked</span>
												<span class="message">15 minutes ago</span>
											</a>
										</li>
										<li>
											<a href="#" class="clearfix">
												<div class="image">
													<i class="fa fa-signal bg-success"></i>
												</div>
												<span class="title">Connection Restaured</span>
												<span class="message">10/10/2014</span>
											</a>
										</li>
									</ul>
			
									<hr />
			
									<div class="text-right">
										<a href="#" class="view-more">View All</a>
									</div>
								</div>
							</div>
						</li>
					</ul>
			
					<span class="separator"></span>
			
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="assets/images/Python.png" alt="Python&SQL" class="img-circle" data-lock-picture="assets/images/Python.png" />
							</figure>
							<div class="profile-info">
								<span class="name">Intro to Python&SQL</span>
								<span class="role">Data Science - Admin</span>
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
								<li>
									<a role="menuitem" tabindex="-1" href="/User_Profile"><i class="fa fa-user"></i> My Profile</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="/Lock"><i class="fa fa-lock"></i> Lock Screen</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="/SignIn"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end: search & user box -->
			</header>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<aside id="sidebar-left" class="sidebar-left">
				
					<div class="sidebar-header">
						<div class="sidebar-title">
						
						</div>
						<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
							<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
						</div>
					</div>
				
					<div class="nano">
						<div class="nano-content">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-main">
									<li class="nav-active">
										<a href="/">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>Menu</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-tasks" aria-hidden="true"></i>
											<span>User</span>
										</a>
										<ul class="nav nav-children">
											<li>
												<a href="/SignUp">
													 Sign Up
												</a>
											</li>
											<li>
												<a href="/SignIn">
													 Sign In
												</a>
											</li>
											<li>
												<a href="/myMovies">
														My Movies
												</a>
												</li>
											<li>
												<a href="/Timeline">
													 Timeline
												</a>
											</li>
											<li>
												<a href="/Certificate">
													 Certificate
												</a>
											</li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-copy" aria-hidden="true"></i>
											<span>Pages</span>
										</a>
										<ul class="nav nav-children">
											<li>
												<a href="/list_of_movies">
													 List of Movies
												</a>
											</li>
											<li>
												<a href="/Top1000">
													 Top 1000
												</a>
											</li>
											<li>
												<a href="/Top100_by_genre">
													 Top 100 by Genre
												</a>
											</li>
											<li>
												<a href="/Top100_by_year">
													 Top 100 by Year
												</a>
											</li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-align-left" aria-hidden="true"></i>
											<span>Insights</span>
										</a>
										<ul class="nav nav-children" aria-hidden="true">
											<li class="nav-parent" aria-hidden="true">
												<a>Statistics</a>
												<ul class="nav nav-children" aria-hidden="true">
													<li class="nav-parent" aria-hidden="true">
														<a>...</a>
														<ul class="nav nav-children" aria-hidden="true">
															<li>
																<a>Graphs</a>
															</li>
															<li>
																<a>Tables</a>
															</li>
														</ul>
													</li>
												</ul>	
											<li class="nav-parent" aria-hidden="true">
												<a>Statistics</a>
												<ul class="nav nav-children" aria-hidden="true">
													<li class="nav-parent" aria-hidden="true">
														<a>...</a>
														<ul class="nav nav-children" aria-hidden="true">
															<li>
																<a>Graphs</a>
															</li>
															<li>
																<a>Tables</a>
															</li>
														</ul>
													</li>
												</ul>	
											<li class="nav-parent" aria-hidden="true">
												<a>Statistics</a>
												<ul class="nav nav-children" aria-hidden="true">
													<li class="nav-parent" aria-hidden="true">
														<a>...</a>
														<ul class="nav nav-children" aria-hidden="true">
															<li>
																<a>Graphs</a>
															</li>
															<li>
																<a>Tables</a>
															</li>
														</ul>
													</li>
												</ul>	
											</li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i>
											<span>Credits</span>
										</a>
										<ul class="nav nav-children" aria-hidden="true">
											<li class="nav-parent" aria-hidden="true">
												<a>All Credits</a>
												<ul class="nav nav-children" aria-hidden="true">
													<li class="nav-parent" aria-hidden="true">
														<a>Authors</a>
														<ul class="nav nav-children" aria-hidden="true">
															<li>
																<a href="https://www.linkedin.com/in/korneliusz-krysiak-a6348575/?ori…">Korneliusz Krysiak</a>
															</li>
															<li>
																<a href="https://www.linkedin.com/in/michał-szałański-277b26155/?originalSubdomain=pl">Michał Szałański</a>
															</li>
														</ul>
													</li>
												</ul>	
												<ul class="nav nav-children" aria-hidden="true">
													<li class="nav-parent" aria-hidden="true">
														<a>Bootstrap Theme</a>
														<ul class="nav nav-children" aria-hidden="true">
															<li>
																<a href="https://github.com/puikinsh/octopus">Github</a>
															</li>
														</ul>
													</li>
												</ul>
												<ul class="nav nav-children" aria-hidden="true">
													<li class="nav-parent" aria-hidden="true">
														<a>Database</a>
														<ul class="nav nav-children" aria-hidden="true">
															<li>
																<a href="https://www.kaggle.com/rounakbanik/the-movies-dataset">Kaggle</a>
															</li>
														</ul>
													</li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</aside>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Dashboard</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<div class="row">
							<div class="row" id="search">
								<form id="search-form" action="" method="POST" enctype="multipart/form-data">
									<div class="form-group col-xs-9">
										<input class="form-control" type="text" placeholder="Search" />
									</div>
									<div class="form-group col-xs-3">
										<button type="submit" class="btn btn-block btn-primary">Search</button>
									</div>
								</form>
							</div>
							<div class="row" id="filter">
								<form>
									<div class="form-group col-sm-3 col-xs-6">
										<select data-filter="make" class="filter-make filter form-control">
											<option value="">Select Genre</option>
											<option value="">Adventure</option>
											<option value="">Romance</option>
											<option value="">Action</option>
											<option value="">Comedy</option>
											<option value="">Drama</option>
											<option value="">Crime</option>
										</select>
									</div>
									<div class="form-group col-sm-3 col-xs-6">
										<select data-filter="model" class="filter-model filter form-control">
											<option value="">For Adults</option>
											<option value="">Yes</option>
											<option value="">No</option>
										</select>
									</div>
									<div class="form-group col-sm-3 col-xs-6">
										<select data-filter="type" class="filter-type filter form-control">
											<option value="">Rating</option>
											<option value="">1 - 2 *</option>
											<option value="">2 - 3 *</option>
											<option value="">3 - 4 *</option>
											<option value="">4 - 5 **</option>
											<option value="">5 - 6 **</option>
											<option value="">6 - 7 **</option>
											<option value="">7 - 8 ***</option>
											<option value="">8 - 9 ***</option>
											<option value="">9 - 10 ***</option>
										</select>
									</div>
									<div class="form-group col-sm-3 col-xs-6">
										<select data-filter="price" class="filter-price filter form-control">
											<option value="">Release Date</option>
											<option value="">1930-1950</option>
											<option value="">1950-1970</option>
											<option value="">1970-1990</option>
											<option value="">1990-2010</option>
											<option value="">2010+</option>
										</select>
									</div>
								</form>
							</div>	
					
					<!-- start: page -->
					<div class="row">
						<div class="col-md-6 col-lg-12 col-xl-6">
							<section class="panel">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-8">
											<div class="chart-data-selector" id="salesSelectorWrapper">
												<h2>
													Watched in:
													<strong>
														<select class="form-control" id="salesSelector">
															<option value="JSOFT Admin" selected>2018</option>
															<option value="JSOFT Drupal" >2017</option>
														</select>
													</strong>
												</h2>

												<div id="salesSelectorItems" class="chart-data-selector-items mt-sm">
													<!-- Flot: Sales JSOFT Admin -->
													<div class="chart chart-sm" data-sales-rel="JSOFT Admin" id="flotDashSales1" class="chart-active"></div>
													<script>

														var flotDashSales1Data = [{
														    data: [
														        ["Jan", 140],
														        ["Feb", 240],
														        ["Mar", 190],
														        ["Apr", 140],
														        ["May", 180],
														        ["Jun", 320],
														        ["Jul", 270],
														        ["Aug", 180]
														    ],
														    color: "#0088cc"
														}];

														// See: assets/javascripts/dashboard/examples.dashboard.js for more settings.

													</script>

													<!-- Flot: Sales JSOFT Drupal -->
													<div class="chart chart-sm" data-sales-rel="JSOFT Drupal" id="flotDashSales2" class="chart-hidden"></div>
													<script>

														var flotDashSales2Data = [{
														    data: [
														        ["Jan", 240],
														        ["Feb", 240],
														        ["Mar", 290],
														        ["Apr", 540],
														        ["May", 480],
														        ["Jun", 220],
														        ["Jul", 170],
														        ["Aug", 190]
														    ],
														    color: "#2baab1"
														}];

														// See: assets/javascripts/dashboard/examples.dashboard.js for more settings.

													</script>

													<!-- Flot: Sales JSOFT Wordpress -->
													<div class="chart chart-sm" data-sales-rel="JSOFT Wordpress" id="flotDashSales3" class="chart-hidden"></div>
													<script>

														var flotDashSales3Data = [{
														    data: [
														        ["Jan", 840],
														        ["Feb", 740],
														        ["Mar", 690],
														        ["Apr", 940],
														        ["May", 1180],
														        ["Jun", 820],
														        ["Jul", 570],
														        ["Aug", 780]
														    ],
														    color: "#734ba9"
														}];

														// See: assets/javascripts/dashboard/examples.dashboard.js for more settings.

													</script>
												</div>

											</div>
										</div>
										<div class="col-lg-4 text-center">
											<h2 class="panel-title mt-md">Watched Movies Goal</h2>
											<div class="liquid-meter-wrapper liquid-meter-sm mt-lg">
												<div class="liquid-meter">
													<meter min="0" max="100" value="10" id="meterSales"></meter>
												</div>
												<div class="liquid-meter-selector" id="meterSalesSel">
													<a href="#" data-val="25" class="active">Monthly Goal</a>
													<a href="#" data-val="10">Annual Goal</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
						<div class="col-md-6 col-lg-12 col-xl-6">
							<div class="row">
								<div class="col-xl-12">
									<section class="panel panel-featured-left panel-featured-primary">
										<div class="panel-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-primary">
														<i class="fa fa-life-ring"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Favorite Movie</h4>
														<div class="info">
															<strong class="amount">Cloud Atlas</strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase">(view all)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
								<div class="col-xl-12">
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
														<h4 class="title">Favorite Genre</h4>
														<div class="info">
															<strong class="amount">Drama</strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase">(view all)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<section class="panel panel-transparent">
							<header class="panel-heading">
								<div class="panel-actions">
									<a href="#" class="fa fa-caret-down"></a>
									<a href="#" class="fa fa-times"></a>
								</div>
								<h2 class="panel-title">My Stats</h2>
							</header>
							<div class="panel-body">
								<section class="panel">
									<div class="panel-body">
										<div class="circular-bar circular-bar-xs m-none mt-xs mr-md pull-right">
											<div class="circular-bar-chart" data-percent="2000" data-plugin-options='{ "barColor": "#2baab1", "delay": 300, "size": 50, "lineWidth": 4 }'>
												<strong>Percentage</strong>
												<label><span class="value">2000</span></label>
											</div>
										</div>
										<div class="h4 text-bold mb-none">2000</div>
										<p class="text-xs text-muted mb-none">Watched Movies</p>
									</div>
								</section>
								<section class="panel">
									<div class="panel-body">
										<div class="circular-bar circular-bar-xs m-none mt-xs mr-md pull-right">
											<div class="circular-bar-chart" data-percent="500" data-plugin-options='{ "barColor": "#2baab1", "delay": 300, "size": 50, "lineWidth": 4 }'>
												<strong>Percentage</strong>
												<label><span class="percent">500</span></label>
											</div>
										</div>
										<div class="h4 text-bold mb-none">500</div>
										<p class="text-xs text-muted mb-none">Your Wishlist</p>
									</div>
								</section>
								<section class="panel">
									<div class="panel-body">
										<div class="circular-bar circular-bar-xs m-none mt-xs mr-md pull-right">
											<div class="circular-bar-chart" data-percent="76" data-plugin-options='{ "barColor": "#2baab1", "delay": 300, "size": 50, "lineWidth": 4 }'>
												
												<label><span class="value">7.6</span></label>
											</div>
										</div>
										<div class="h4 text-bold mb-none">7.6</div>
										<p class="text-xs text-muted mb-none">Average Rating</p>
									</div>
								</section>
							</div>
						</section>
					</div>
					<div class="row">
						
						<div class="col-lg-6 col-md-12">
							<section class="panel">
								<header class="panel-heading panel-heading-transparent">
									<div class="panel-actions">
										<a href="#" class="fa fa-caret-down"></a>
										<a href="#" class="fa fa-times"></a>
									</div>

									<h2 class="panel-title">Recently Watched</h2>
								</header>
								<div class="panel-body">
									<div class="table-responsive">
										<table class="table table-striped mb-none">
											<thead>
												<tr>
													<th>#</th>
													<th>Movie</th>
													<th>Status</th>
													<th>Rating</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>costam costam</td>
													<td><span class="label label-success">Watched</span></td>
													<td>
														<div class="progress progress-sm progress-half-rounded m-none mt-xs light">
															<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
																100%
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>2</td>
													<td>costam costam</td>
													<td><span class="label label-success">Watched</span></td>
													<td>
														<div class="progress progress-sm progress-half-rounded m-none mt-xs light">
															<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
																100%
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>3</td>
													<td>costam costam</td>
													<td><span class="label label-warning">Wishlist</span></td>
													<td>
														<div class="progress progress-sm progress-half-rounded m-none mt-xs light">
															<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
																60%
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>4</td>
													<td>costam costam</td>
													<td><span class="label label-success">Watched</span></td>
													<td>
														<div class="progress progress-sm progress-half-rounded m-none mt-xs light">
															<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
																90%
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>costam costam</td>
													<td><span class="label label-warning">Wishlist</span></td>
													<td>
														<div class="progress progress-sm progress-half-rounded m-none mt-xs light">
															<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
																45%
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>6</td>
													<td>costam costam</td>
													<td><span class="label label-danger">Dropped</span></td>
													<td>
														<div class="progress progress-sm progress-half-rounded m-none mt-xs light">
															<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
																40%
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<td>7</td>
													<td>costam costam</td>
													<td><span class="label label-success">Watched</span></td>
													<td>
														<div class="progress progress-sm progress-half-rounded mt-xs light">
															<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 95%;">
																95%
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</section>
						</div>
					</div>
				<!-- end: page -->
				</section>
			</div>

			<aside id="sidebar-right" class="sidebar-right">
				<div class="nano">
					<div class="nano-content">
						<a href="#" class="mobile-close visible-xs">
							 <i class="fa fa-chevron-right"></i>
						</a>
			
						<div class="sidebar-right-wrapper">
			
							<div class="sidebar-widget widget-calendar">
								<h6>Callendar</h6>
								<div data-plugin-datepicker data-plugin-skin="dark" ></div>
							</div>
						</div>
					</div>
				</div>
			</aside>
		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>
		<script src="assets/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js"></script>
		<script src="assets/vendor/jquery-appear/jquery.appear.js"></script>
		<script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
		<script src="assets/vendor/jquery-easypiechart/jquery.easypiechart.js"></script>
		<script src="assets/vendor/flot/jquery.flot.js"></script>
		<script src="assets/vendor/flot-tooltip/jquery.flot.tooltip.js"></script>
		<script src="assets/vendor/flot/jquery.flot.pie.js"></script>
		<script src="assets/vendor/flot/jquery.flot.categories.js"></script>
		<script src="assets/vendor/flot/jquery.flot.resize.js"></script>
		<script src="assets/vendor/jquery-sparkline/jquery.sparkline.js"></script>
		<script src="assets/vendor/raphael/raphael.js"></script>
		<script src="assets/vendor/morris/morris.js"></script>
		<script src="assets/vendor/gauge/gauge.js"></script>
		<script src="assets/vendor/snap-svg/snap.svg.js"></script>
		<script src="assets/vendor/liquid-meter/liquid.meter.js"></script>
		<script src="assets/vendor/jqvmap/jquery.vmap.js"></script>
		<script src="assets/vendor/jqvmap/data/jquery.vmap.sampledata.js"></script>
		<script src="assets/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>


		<!-- Examples -->
		<script src="assets/javascripts/dashboard/examples.dashboard.js"></script>
	</body>
</html>