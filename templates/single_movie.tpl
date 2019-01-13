% rebase('templates/base.tpl')
<section role="main" class="content-body">
<header class="page-header">
   <h2>{{data[2]}}</h2>
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
<!-- start: page -->
<div class="row">
   <div class="col-md-4 col-lg-3">
      <section class="panel">
         <div class="panel-body">
            <div class="thumb-info  mb-md">
               <img src="https://image.tmdb.org/t/p/w1280{{data[0]}}" class="rounded img-responsive" alt="Python&SQL">
            </div>
            <hr class="dotted short">
            <h6 class="text-muted">Status</h6>
            <p>{{data[11]}}</p>
         </div>
      </section>
   </div>
   <div class="col-md-8 col-lg-6">
      <h1 class="mb-lg center">{{data[2]}}</h1>
      <h4 class="mb-xlg center">{{data[1]}}</h4>
      <div class="tabs">
         <ul class="nav nav-tabs tabs-primary">
         </ul>
         <div class="tab-content">
            <div id="overview" class="tab-pane active">
               <div class="timeline timeline-simple mt-xlg mb-md">
                  <div class="tm-body">
                     <ol class="tm-items">
                        <li>
                           <div class="tm-box">
                              <p class="text-muted mb-none">Description</p>
                              <p>
                                 {{data[3]}}
                              </p>
                           </div>
                        </li>
                     </ol>
                     <ol class="tm-items">
                        <li>
                           <div class="tm-box">
                              <p class="text-muted mb-none">Box Office</p>
                              <p>
                                 Revenue: {{data[4]}} </br>   
                                 Budget: {{data[5]}}
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
      <h4 class="mb-md"></h4>
      <ul class="simple-card-list mb-xlg">
         <li class="primary" style="background:#37C342;">
            <h3 class="center"><a href="/my-movies?add_wishlist={{data[2]}}" role="button" style="color:white;">Add to Watchlist</a></h3>
         </li>
         <li class="primary">
            <h3>{{data[6]}}</h3>
            <p>Vote Average</p>
         </li>
         <li class="primary">
            <h3>{{data[7]}}</h3>
            <p>Vote Count</p>
         </li>
         <li class="primary">
            <h3>{{data[8]}}</h3>
            <p>Release Date</p>
         </li>
         <li class="primary">
            <h3>{{data[9]}}</h3>
            <p>Genre</p>
         </li>
         <li class="primary">
            <h3>{{data[10]}} min</h3>
            <p>Runtime</p>
         </li>
         <!--
         <li class="primary">
            <h3>{{data[11]}}</h3>
            <p>Status</p>
         </li>
         -->
      </ul>
   </div>
</div>
<!-- end: page -->

