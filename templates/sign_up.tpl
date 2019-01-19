<!doctype html>
<html class="fixed">
   <head>
      <!-- Basic -->
      <meta charset="UTF-8">
      <meta name="keywords" content="Sign In" />
      <meta name="description" content="Sign In">
      <meta name="author" content="">
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
   </head>
   <body>
      <!-- start: page -->
      <section class="body-sign">
         <div class="center-sign">
            <a href="/" class="logo pull-left">
            <img src="assets/images/WNE.png" height="80" alt="" />
            </a>
            <div class="panel panel-sign">
               <div class="panel-title-sign mt-xl text-right">
                  <h2 class="title text-uppercase text-bold m-none"><i class="fa fa-user mr-xs"></i> Sign Up</h2>
               </div>
               <div class="panel-body">
                  <form action="/sign-up" method="post">
                     <div class="form-group mb-lg">
                        %if warning != "":
                           <div><label style="color:red;">{{warning}}</label></div>
                        %end
                        <label>Name </label>
                        <input name="name" type="text" class="form-control input-lg" />
                     </div>
                     <div class="form-group mb-lg">
                        <label>E-mail Address</label>
                        <input name="email" type="email" class="form-control input-lg" />
                     </div>
                     <div class="form-group mb-none">
                        <div class="row">
                           <div class="col-sm-6 mb-lg">
                              <label>Password</label>
                              <input name="pwd" type="password" class="form-control input-lg" />
                           </div>
                           <div class="col-sm-6 mb-lg">
                              <label>Password Confirmation</label>
                              <input name="pwd_confirm" type="password" class="form-control input-lg" />
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="center text-right">
                           <button type="submit" class="btn btn-primary hidden-xs">Sign Up</button>
                           <button type="submit" class="btn btn-primary btn-block btn-lg visible-xs mt-lg">Sign Up</button>
                        </div>
                     </div>
                     <p>
                     <p class="text-center">Already have an account? <a href="/sign-in">Sign In!</a></p>
                  </form>
               </div>
            </div>
            <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2019. All rights reserved. Prepared by Korneliusz Krysiak and Michał Szałański. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
         </div>
      </section>
      <!-- end: page -->
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