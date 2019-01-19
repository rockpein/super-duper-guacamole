<!doctype html>
<html class="fixed sidebar-left-collapsed">
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="content-language" content="pl" />
      <meta name="robots" content="index, follow" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Movies in Python</title>
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
      <!-- dodane -->
      <link rel="stylesheet" href="assets/vendor/select2/select2.css" />
      <link rel="stylesheet" href="assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />
      <!-- Theme CSS -->
      <link rel="stylesheet" href="assets/stylesheets/theme.css" />
      <link rel="stylesheet" href="assets/stylesheets/my_css.css" />
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
               <a href="../" class="logo" style="margin: 0px;">
               <img src="assets/images/WNE.png" height="60"  alt="" />
               </a>
               <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
                  <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
               </div>
            </div>
            <!-- start: search & user box -->
            <div class="header-right">
               <form action="/search" class="search nav-form">
                  <div class="input-group input-search">
                     <input type="text" class="form-control" name="title" id="q" placeholder="Search...">
                     <span class="input-group-btn">
                     <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                     </span>
                  </div>
               </form>
               <span class="separator"></span>
               <ul class="notifications">
                  <li>
                     <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                     <i class="fa fa-bell"></i>
                     <span class="badge">2</span>
                     </a>
                     <div class="dropdown-menu notification-menu large">
                        <div class="notification-title">
                           <span class="pull-right label label-default">2</span>
                           Actions
                        </div>
                        <%
                           from bottle import Bottle, request
                           import sqlite3
                           username_cookie = request.get_cookie("account", secret="guacamole")
                           connection2 = sqlite3.connect("data/main_database.db")
                           c2 = connection2.cursor()
                           c2.execute("SELECT DISTINCT w.Wishlist_ID FROM Wishlist AS w, users AS u JOIN Wishlist users ON w.USER_ID = u.user_id WHERE u.username = (?)",(username_cookie,))
                           id = c2.fetchall()
                           number = (len(id)/5000)*100
                           
                           c2.execute("SELECT DISTINCT m.title, m.genres, m.vote_average, m.vote_count, m.release_date, m.adult FROM movie_database_c AS m, Wishlist AS w, users AS u JOIN Wishlist movie_database_c ON w.Movie_ID = m.id JOIN Wishlist users ON w.USER_ID = u.user_id WHERE u.username = (?) ORDER BY w.Wishlist_ID DESC", (username_cookie,))
                           recently_watched = c2.fetchone()
                           connection2.close()
                           %>

                           %if recently_watched != None:
                              %recently_watched = recently_watched[0]
                           %end
                           
                        <div class="content">
                           <ul>
                              <li>
                                 <p class="clearfix mb-xs">
                                    <span class="message pull-left">Recently Watched</span>
                                    <span class="message pull-right text-dark">{{recently_watched}}</span>
                                 </p>
                                 <div class="progress progress-xs light">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                                 </div>
                              </li>
                              <li>
                                 <p class="clearfix mb-xs">
                                    <span class="message pull-left">Progress</span>
                                    <span class="message pull-right text-dark">{{number}} %</span>
                                 </p>
                                 <div class="progress progress-xs light">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="100-{{number}}" aria-valuemin="0" aria-valuemax="100" style="width: {{number}}%;"></div>
                                 </div>
                              </li>
                           </ul>
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
                        %if username_cookie == "":
                        <span class="role">Data Science</span>
                        %else:
                        <span class="role">Current user: {{username_cookie}}</span>
                        %end
                     </div>
                     <i class="fa custom-caret"></i>
                  </a>
                  <div class="dropdown-menu">
                     <ul class="list-unstyled">
                        <li class="divider"></li>
                        %if username_cookie == None:
                           <li>
                              <a role="menuitem" tabindex="-1" href="/sign-up"><i class="fa fa-pencil"></i>   Create account</a>
                           </li>
                           <li>
                              <a role="menuitem" tabindex="-1" href="/sign-in"><i class="fa fa-key"></i>   Log in</a>
                           </li>
                        %else:  
                           <li>
                              <a role="menuitem" tabindex="-1" href="/sign-in?logout=true"><i class="fa fa-power-off"></i>   Logout</a>
                           </li>
                        %end
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
                        <li class="nav-parent">
                           <a>
                           <i class="fa fa-tasks" aria-hidden="true"></i>
                           <span>User</span>
                           </a>
                           <ul class="nav nav-children">

                           %if username_cookie == None:
                              <li>
                                 <a href="/sign-up">
                                 Sign Up
                                 </a>
                              </li>
                              <li>
                                 <a href="/sign-in">
                                 Sign In
                                 </a>
                              </li>
                           %else:
                              <li>
                                 <a href="/my-movies">
                                 My Watchlist
                                 </a>
                              </li>
                              <li>
                                 <a href="/sign-in?logout=true">
                                 Logout
                                 </a>
                              </li>
                           %end
                           </ul>
                        </li>
                        <li class="nav-parent">
                           <a>
                           <i class="fa fa-copy" aria-hidden="true"></i>
                           <span>Movies</span>
                           </a>
                           <ul class="nav nav-children">
                              <li>
                                 <a href="/list-of-movies">
                                 All Movies
                                 </a>
                              </li>
                              <li>
                                 <a href="/top-1000">
                                 Top 1000 Movies
                                 </a>
                              </li>
                              <li>
                                 <a href="/top-100-by-genre">
                                 Top 100 by Genre
                                 </a>
                              </li>
                              <li>
                                 <a href="/top-100-by-year">
                                 Top 100 by Year
                                 </a>
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
         {{!base}}
         <!-- end: page -->
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
      <script src="assets/vendor/select2/select2.js"></script>
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
      <script src="assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
      <script src="assets/vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script> 
      <script src="assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script> 
      <!-- Theme Base, Components and Settings -->
      <script src="assets/javascripts/theme.js"></script>
      <!-- Theme Custom -->
      <script src="assets/javascripts/theme.custom.js"></script>
      <!-- Theme Initialization Files -->
      <script src="assets/javascripts/theme.init.js"></script>
      <!-- Examples -->
      <script src="assets/javascripts/dashboard/examples.dashboard.js"></script>
      <script src="assets/javascripts/tables/examples.datatables.default.js"></script>
      <script src="assets/javascripts/tables/examples.datatables.row.with.details.js"></script>
      <script src="assets/javascripts/tables/examples.datatables.tabletools.js"></script>	

      <script>
         $('#datatable-default-order').DataTable( {
            "order": [[ 2, "desc" ]]
         } );

</script>
   </body>
</html>

