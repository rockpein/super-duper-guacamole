% rebase('templates/base.tpl')
<section role="main" class="content-body">
<header class="page-header">
   <h2>User Profile</h2>
   <div class="right-wrapper pull-right">
      <ol class="breadcrumbs">
         <li>
            <a href="/">
            <i class="fa fa-home"></i>
            </a>
         </li>
         <li><span>User Profile</span></li>
      </ol>
      <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
   </div>
</header>
<!-- start: page -->
<div class="row">
   <div class="col-md-4 col-lg-3">
      <section class="panel">
         <div class="panel-body">
            <div class="thumb-info mb-md">
               <img src="assets/images/Python.png" class="rounded img-responsive" alt="Python&SQL">
               <div class="thumb-info-title">
                  <span class="thumb-info-inner">Intro to Python@SQL</span>
                  <span class="thumb-info-type">Admin</span>
               </div>
            </div>
            <hr class="dotted short">
            <h6 class="text-muted">About</h6>
            <p>This website and profile was provided for Intro to Python and SQL Classes.</p>
            <hr class="dotted short">
            <div class="social-icons-list">
               <script>
                  var sites = [
                  "https://www.facebook.com/michal.szalanski",
                  "https://www.facebook.com/kornel.krysiak",
                  ];
                  
                  var sites2 = [
                  	"https://www.linkedin.com/in/michał-szałański-277b26155/?originalSubdomain=pl",
                  	"https://www.linkedin.com/in/korneliusz-krysiak-a6348575/",
                  	];
                  
                  function randomSite() {
                  	var i = parseInt(Math.random() * sites.length);
                  	location.href = sites[i];
                  }
                  
                  function randSite() {
                  	var i = parseInt(Math.random() * sites.length);
                  	location.href = sites2[i];
                  }
                  
               </script>
               <a rel="tooltip" data-placement="bottom" target="_blank" href="#" data-original-title="Facebook" onclick="randomSite();"><i class="fa fa-facebook"></i><span>Facebook</span></a>
               <a rel="tooltip" data-placement="bottom" target="_blank" href="#" data-original-title="Linkedin" onclick="randSite();"><i class="fa fa-linkedin"></i><span>Linkedin</span></a>
            </div>
         </div>
      </section>
      <section>
         <div class="panel-footer">
            <div class="input-group input-search">
               <input type="text" class="form-control" name="q" id="q" placeholder="Search...">
               <span class="input-group-btn">
               <button class="btn btn-default" type="submit"><i class="fa fa-search"></i>
               </button>
               </span>
            </div>
         </div>
      </section>
      <section class="panel">
         <header class="panel-heading">
            <div class="panel-actions">
               <a href="#" class="fa fa-caret-down"></a>
               <a href="#" class="fa fa-times"></a>
            </div>
            <h2 class="panel-title">Best Rated Movies</h2>
         </header>
         <div class="panel-body">
            <ul class="simple-post-list">
               <li>
                  <div class="post-image">
                     <div class="img-thumbnail">
                        <a href="#">
                        <img src="assets/images/post-thumb-1.jpg" alt="">
                        </a>
                     </div>
                  </div>
                  <div class="post-info">
                     <a href="#">Movie 1</a>
                     <div class="post-meta">
                        Score
                     </div>
                  </div>
               </li>
               <li>
                  <div class="post-image">
                     <div class="img-thumbnail">
                        <a href="#">
                        <img src="assets/images/post-thumb-2.jpg" alt="">
                        </a>
                     </div>
                  </div>
                  <div class="post-info">
                     <a href="#">Movie 2</a>
                     <div class="post-meta">
                        Score
                     </div>
                  </div>
               </li>
               <li>
                  <div class="post-image">
                     <div class="img-thumbnail">
                        <a href="#">
                        <img src="assets/images/post-thumb-3.jpg" alt="">
                        </a>
                     </div>
                  </div>
                  <div class="post-info">
                     <a href="#">Movie 3</a>
                     <div class="post-meta">
                        Score
                     </div>
                  </div>
               </li>
            </ul>
         </div>
      </section>
   </div>
   <div class="col-md-8 col-lg-6">
      <div class="tabs">
         <ul class="nav nav-tabs tabs-primary">
            <li class="active">
               <a href="#overview" data-toggle="tab">Overview</a>
            </li>
         </ul>
         <div class="tab-content">
            <div id="overview" class="tab-pane active">
               <h4 class="mb-md">Update Status</h4>
               <section class="simple-compose-box mb-xlg">
                  <form method="get" action="/">
                     <textarea name="message-text" data-plugin-textarea-autosize placeholder="What's on your mind?" rows="1"></textarea>
                  </form>
                  <div class="compose-box-footer">
                     <ul class="compose-toolbar">
                        <li>
                           <a href="#"><i class="fa fa-camera"></i></a>
                        </li>
                        <li>
                           <a href="#"><i class="fa fa-map-marker"></i></a>
                        </li>
                     </ul>
                     <ul class="compose-btn">
                        <li>
                           <a class="btn btn-primary btn-xs">Post</a>
                        </li>
                     </ul>
                  </div>
               </section>
               <h4 class="mb-xlg">Timeline</h4>
               <div class="timeline timeline-simple mt-xlg mb-md">
                  <div class="tm-body">
                     <div class="tm-title">
                        <h3 class="h5 text-uppercase">November 2013</h3>
                     </div>
                     <ol class="tm-items">
                        <li>
                           <div class="tm-box">
                              <p class="text-muted mb-none">7 months ago.</p>
                              <p>
                                 It's awesome when we find a good solution for our projects, Porto Admin is <span class="text-primary">#awesome</span>
                              </p>
                           </div>
                        </li>
                        <li>
                           <div class="tm-box">
                              <p class="text-muted mb-none">7 months ago.</p>
                              <p>
                                 What is your biggest developer pain point?
                              </p>
                           </div>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="col-md-12 col-lg-3">
      <h4 class="mb-md">Dashboard Lite</h4>
      <ul class="simple-card-list mb-xlg">
         <li class="primary">
            <h3>2000/10000</h3>
            <p>Watched Movies</p>
         </li>
         <li class="primary">
            <h3>7.6</h3>
            <p>Overall Ratings</p>
         </li>
         <li class="primary">
            <h3>Fav. Genre</h3>
            <p>Drama</p>
         </li>
      </ul>
      <h4 class="mb-md">Fav.Movie</h4>
      <div class="col-lg-12 text-center">
         <a href="../" class="image">
         <img src="assets/images/Cloud.jpg" height="100%" width="100%" alt="" />
         </a>
      </div>
   </div>
</div>
<!-- end: page -->