<!doctype html>
<html class="fixed sidebar-left-collapsed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Timeline</title>
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
									Tasks
								</div>
			
								<div class="content">
									<ul>
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Generating Sales Report</span>
												<span class="message pull-right text-dark">60%</span>
											</p>
											<div class="progress progress-xs light">
												<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
											</div>
										</li>
			
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Importing Contacts</span>
												<span class="message pull-right text-dark">98%</span>
											</p>
											<div class="progress progress-xs light">
												<div class="progress-bar" role="progressbar" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100" style="width: 98%;"></div>
											</div>
										</li>
			
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Uploading something big</span>
												<span class="message pull-right text-dark">33%</span>
											</p>
											<div class="progress progress-xs light mb-xs">
												<div class="progress-bar" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width: 33%;"></div>
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
													<a href="pages-timeline.html">
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
						<h2>Timeline</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/>
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>User</span></li>
								<li><span>Timeline</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
					<div class="timeline">
						<div class="tm-body">
							<div class="tm-title">
								<h3 class="h5 text-uppercase">November 2013</h3>
							</div>
							<ol class="tm-items">
								<li>
									<div class="tm-info">
										<div class="tm-icon"><i class="fa fa-star"></i></div>
										<time class="tm-datetime" datetime="2013-11-22 19:13">
											<div class="tm-datetime-date">7 months ago.</div>
											<div class="tm-datetime-time">07:13 PM</div>
									</time>
									</div>
									<div class="tm-box appear-animation" data-appear-animation="fadeInRight"data-appear-animation-delay="100">
										<p>
											It's awesome when we find a good solution for our projects, Porto Admin is <span class="text-primary">#awesome</span>
										</p>
										<div class="tm-meta">
											<span>
												<i class="fa fa-user"></i> By <a href="#">John Doe</a>
											</span>
											<span>
												<i class="fa fa-tag"></i> <a href="#">Porto</a>, <a href="#">Awesome</a>
											</span>
											<span>
												<i class="fa fa-comments"></i> <a href="#">5652 Comments</a>
											</span>
										</div>
									</div>
								</li>
								<li>
									<div class="tm-info">
										<div class="tm-icon"><i class="fa fa-thumbs-up"></i></div>
										<time class="tm-datetime" datetime="2013-11-19 18:13">
											<div class="tm-datetime-date">7 months ago.</div>
											<div class="tm-datetime-time">06:13 PM</div>
										</time>
									</div>
									<div class="tm-box appear-animation" data-appear-animation="fadeInRight" data-appear-animation-delay="250">
										<p>
											What is your biggest developer pain point?
										</p>
									</div>
								</li>
								<li>
									<div class="tm-info">
										<div class="tm-icon"><i class="fa fa-map-marker"></i></div>
										<time class="tm-datetime" datetime="2013-11-14 17:25">
											<div class="tm-datetime-date">7 months ago.</div>
											<div class="tm-datetime-time">05:25 PM</div>
										</time>
									</div>
									<div class="tm-box appear-animation" data-appear-animation="fadeInRight" data-appear-animation-delay="400">
										<p>
											<a href="#">John Doe</a> is reading a book at <span class="text-primary">New York Public Library</span>
										</p>
										<blockquote class="primary">
											<p>Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.</p>
											<small>A. Einstein,
												<cite title="Brainyquote">Brainyquote</cite>
											</small>
										</blockquote>
										<div id="gmap-checkin-example" class="mb-sm" style="height: 250px; width: 100%;"></div>
										<div class="tm-meta">
											<span>
												<i class="fa fa-user"></i> By <a href="#">John Doe</a>
											</span>
											<span>
												<i class="fa fa-comments"></i> <a href="#">9 Comments</a>
											</span>
										</div>
									</div>
								</li>
							</ol>
							<div class="tm-title">
								<h3 class="h5 text-uppercase">September 2013</h3>
							</div>
							<ol class="tm-items">
								<li>
									<div class="tm-info">
										<div class="tm-icon"><i class="fa fa-heart"></i></div>
										<time class="tm-datetime" datetime="2013-09-08 16:13">
											<div class="tm-datetime-date">9 months ago.</div>
											<div class="tm-datetime-time">04:13 PM</div>
										</time>
									</div>
									<div class="tm-box appear-animation" data-appear-animation="fadeInRight">
										<p>
											Checkout! How cool is that!
										</p>
										<div class="thumbnail-gallery">
											<a class="img-thumbnail" href="assets/images/projects/project-4.jpg">
												<img width="215" src="assets/images/projects/project-4.jpg">
												<span class="zoom">
													<i class="fa fa-search"></i>
												</span>
											</a>
											<a class="img-thumbnail" href="assets/images/projects/project-3.jpg">
												<img width="215" src="assets/images/projects/project-3.jpg">
												<span class="zoom">
													<i class="fa fa-search"></i>
												</span>
											</a>
											<a class="img-thumbnail" href="assets/images/projects/project-2.jpg">
												<img width="215" src="assets/images/projects/project-2.jpg">
												<span class="zoom">
													<i class="fa fa-search"></i>
												</span>
											</a>
										</div>
										<div class="tm-meta">
											<span>
												<i class="fa fa-user"></i> By <a href="#">John Doe</a>
											</span>
											<span>
												<i class="fa fa-tag"></i> <a href="#">Duis</a>, <a href="#">News</a>
											</span>
											<span>
												<i class="fa fa-comments"></i> <a href="#">12 Comments</a>
											</span>
										</div>
									</div>
								</li>
								<li>
									<div class="tm-info">
										<div class="tm-icon"><i class="fa fa-video-camera"></i></div>
										<time class="tm-datetime" datetime="2013-09-08 11:26">
											<div class="tm-datetime-date">9 months ago.</div>
											<div class="tm-datetime-time">11:26 AM</div>
										</time>
									</div>
									<div class="tm-box appear-animation" data-appear-animation="fadeInRight">
										<p>
											Google Fonts gives you access to over 600 web fonts!
										</p>
										<div class="embed-responsive embed-responsive-16by9">
											<iframe class="embed-responsive-item" src="//player.vimeo.com/video/67957799"></iframe>
										</div>
										<div class="tm-meta">
											<span>
												<i class="fa fa-user"></i> By <a href="#">John Doe</a>
											</span>
											<span>
												<i class="fa fa-thumbs-up"></i> 122 Likes
											</span>
											<span>
												<i class="fa fa-comments"></i> <a href="#">3 Comments</a>
											</span>
										</div>
									</div>
								</li>
							</ol>
						</div>
					</div>
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
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/jquery-appear/jquery.appear.js"></script>
		<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
		<script src="assets/vendor/gmaps/gmaps.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>


		<!-- Examples -->
		<script src="assets/javascripts/pages/examples.timeline.js"></script>
	</body>
</html>