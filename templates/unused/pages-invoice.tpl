<!doctype html>
<html class="fixed sidebar-left-collapsed">
	<head>

		<!-- Basic -->
		<meta charset="utf-8" />
		<meta http-equiv="content-language" content="pl" />
		<meta name="robots" content="index, follow" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title>Certificate</title>

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
												<span class="message pull-left">Average Rating</span>
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
								<img src="assets/images/Python.png" alt="Joseph Doe" class="img-circle" data-lock-picture="assets/images/!logged-user.jpg" />
							</figure>
							<div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@JSOFT.com">
								<span class="name">Intro to Python&SQL</span>
								<span class="role">Data Science - Admin</span>
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
								<li>
									<a role="menuitem" tabindex="-1" href="pages-user-profile.html"><i class="fa fa-user"></i> My Profile</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="#" data-lock-screen="true"><i class="fa fa-lock"></i> Lock Screen</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="pages-signin.html"><i class="fa fa-power-off"></i> Logout</a>
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
						<h2>Certificate</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>User</span></li>
								<li><span>Certificate</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->

					<section class="panel">
						<div class="panel-body">
							<div class="invoice">
								<header class="clearfix">
									<div class="row">
										<div class="col-sm-6 mt-md">
											<h2 class="h2 mt-none mb-sm text-dark text-bold">Certificate</h2>
											<h4 class="h4 m-none text-dark text-bold">#1</h4>
										</div>
										<div class="col-sm-6 text-right mt-md mb-md">
											<address class="ib mr-xlg">
												Okler Themes Ltd
												<br/>
												24 Henrietta Street, London, England
												<br/>
												Phone: +12 3 4567-8901
												<br/>
												okler@okler.net
											</address>
											<div class="ib">
												<img src="assets/images/invoice-logo.png" alt="OKLER Themes" />
											</div>
										</div>
									</div>
								</header>
								<div class="bill-info">
									<div class="row">
										<div class="col-md-6">
											<div class="bill-to">
												<p class="h5 mb-xs text-dark text-semibold">To:</p>
												<address>
													Envato
													<br/>
													121 King Street, Melbourne, Australia
													<br/>
													Phone: +61 3 8376 6284
													<br/>
													info@envato.com
												</address>
											</div>
										</div>
										<div class="col-md-6">
											<div class="bill-data text-right">
												<p class="mb-none">
													<span class="text-dark">Invoice Date:</span>
													<span class="value">05/20/2014</span>
												</p>
												<p class="mb-none">
													<span class="text-dark">Due Date:</span>
													<span class="value">06/20/2014</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							
								<div class="table-responsive">
									<table class="table invoice-items">
										<thead>
											<tr class="h4 text-dark">
												<th id="cell-id"     class="text-semibold">#</th>
												<th id="cell-item"   class="text-semibold">Item</th>
												<th id="cell-desc"   class="text-semibold">Description</th>
												<th id="cell-price"  class="text-center text-semibold">Price</th>
												<th id="cell-qty"    class="text-center text-semibold">Quantity</th>
												<th id="cell-total"  class="text-center text-semibold">Total</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>123456</td>
												<td class="text-semibold text-dark">Porto HTML5 Template</td>
												<td>Multipourpouse Website Template</td>
												<td class="text-center">$14.00</td>
												<td class="text-center">2</td>
												<td class="text-center">$28.00</td>
											</tr>
											<tr>
												<td>654321</td>
												<td class="text-semibold text-dark">Tucson HTML5 Template</td>
												<td>Awesome Website Template</td>
												<td class="text-center">$17.00</td>
												<td class="text-center">1</td>
												<td class="text-center">$17.00</td>
											</tr>
										</tbody>
									</table>
								</div>
							
								<div class="invoice-summary">
									<div class="row">
										<div class="col-sm-4 col-sm-offset-8">
											<table class="table h5 text-dark">
												<tbody>
													<tr class="b-top-none">
														<td colspan="2">Subtotal</td>
														<td class="text-left">$73.00</td>
													</tr>
													<tr>
														<td colspan="2">Shipping</td>
														<td class="text-left">$0.00</td>
													</tr>
													<tr class="h4">
														<td colspan="2">Grand Total</td>
														<td class="text-left">$73.00</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>

							<div class="text-right mr-lg">
								<a href="#" class="btn btn-default">Submit Invoice</a>
								<a href="pages-invoice-print.html" target="_blank" class="btn btn-primary ml-sm"><i class="fa fa-print"></i> Print</a>
							</div>
						</div>
					</section>

					<!-- end: page -->
				</section>
			</div>

			<aside id="sidebar-right" class="sidebar-right">
				<div class="nano">
					<div class="nano-content">
						<a href="#" class="mobile-close visible-xs">
							Collapse <i class="fa fa-chevron-right"></i>
						</a>
			
						<div class="sidebar-right-wrapper">
			
							<div class="sidebar-widget widget-calendar">
								<h6>CALLENDAR</h6>
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
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

	</body>
</html>