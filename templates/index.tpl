% rebase('templates/base.tpl')
<style>
   .widget-summary-col{
      vertical-align: middle !important;
   }

   .summary{
      min-height: 0px !important;
   }
</style>
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
         <li><span>Dashboard</span></li>
      </ol>
      <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
   </div>
</header>
<section class="panel">
 <form id="search-form" action="/search" enctype="multipart/form-data">
   <div class="row" id="search">
      <div class="form-group col-xs-9">
         <input class="form-control" type="text" placeholder="Search" name="title" />
      </div>
      <div class="form-group col-xs-3">
         <button type="submit" class="btn btn-block btn-primary">Search</button>
      </div>
   </div>
   <div class="row" id="filter">
   
         <div class="form-group col-xs-3">
            <select data-filter="make" name="genre" class="filter-make filter form-control">
               <option value="">Select Genre</option>
            %for genre in genres[:]:
               <option value="{{str(genre)[2:-3]}}">{{str(genre)[2:-3]}}</option>
            %end  
            </select>
         </div>
         <div class="form-group col-xs-3">
            <select data-filter="model" name="adult" class="filter-model filter form-control">
               <option value="">For Adults</option>
               %for adult in adults:
               <option value="{{str(adult)[2:-3]}}">{{str(adult)[2:-3]}}</option>
               %end
            </select>
         </div>
         <div class="form-group col-xs-3">
            <select data-filter="type" name="rating" class="filter-type filter form-control">
               <option value="">Select Rating</option>
               <option input value="2" type="checkbox">2-4 (*)</option>
               <option input value="4" type="checkbox">4-6 (**)</option>
               <option input value="6" type="checkbox">6-8 (**)</option>
               <option input value="8" type="checkbox">8-10 (***)</option>
            </select>
         </div>
         <div class="form-group col-xs-3">
            <select data-filter="price" name="date" class="filter-price filter form-control">
               <option value="">Release Date</option>
               <option value="1930">1930-1950</option>
               <option value="1950">1950-1970</option>
               <option value="1970">1970-1990</option>
               <option value="1990">1990-2010</option>
               <option value="2010">2010+</option>
            </select>
         </div>
      </form>
   </div>
</section>   	
<section class="poor">
   <div class="col-xs-3">
      <section class="panel panel-featured-left panel-featured-quartenary">
         <div class="panel-body">
            <div class="widget-summary">
               <div class="widget-summary-col widget-summary-col-icon">
                  <div class="summary-icon bg-quartenary">
                     <i class="fa fa-key"></i>
                  </div>
               </div>
               <div class="widget-summary-col">
                  <div class="summary center">
                     <h4 class="title"></h4>
                     <div class="info center-block">
                        <div>
                           <a href="/sign-in"><strong class="amount">Sign In</strong></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</section> 
<section class="panel">
   <div class="col-xs-6">
      <section class="panel panel-featured-left panel-featured-quartenary">
         <div class="panel-body">
            <div class="widget-summary">
               <div class="widget-summary-col widget-summary-col-icon">
                  <div class="summary-icon bg-quartenary">
                     <i class="fa fa-heart"></i>
                  </div>
               </div>
               <div class="widget-summary-col">
                  <div class="summary center">
                     <h4 class="title"></h4>
                     <div class="info">
                        <div>
                           <a href="/my-movies"><strong class="amount">Watchlist</strong></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</section>
<section class="panel">
   <div class="col-xs-3">
      <section class="panel panel-featured-left panel-featured-quartenary">
         <div class="panel-body">
            <div class="widget-summary">
               <div class="widget-summary-col widget-summary-col-icon">
                  <div class="summary-icon bg-quartenary">
                     <i class="fa fa-pencil"></i>
                  </div>
               </div>
               <div class="widget-summary-col">
                  <div class="summary center">
                     <h4 class="title"></h4>
                     <div class="info">
                        <div>
                           <a href="/sign-up"><strong class="amount">Sign Up</strong></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</section>
<section class="panel">
   <div class="col-xs-12">
      <section class="panel panel-featured-left panel-featured-quartenary">
         <div class="panel-body">
            <div class="widget-summary">
               <div class="widget-summary-col widget-summary-col-icon">
                  <div class="summary-icon bg-quartenary">
                     <i class="fa fa-film"></i>
                  </div>
               </div>
               <div class="widget-summary-col">
                  <div class="summary center">
                     <h4 class="title"></h4>
                     <div class="info">
                        <div>
                           <a href="/list-of-movies"><strong class="amount">All Movies</strong></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</section>
<section class="panel">
   <div class="col-xs-4">
      <section class="panel panel-featured-left panel-featured-quartenary">
         <div class="panel-body">
            <div class="widget-summary">
               <div class="widget-summary-col widget-summary-col-icon">
                  <div class="summary-icon bg-quartenary">
                     <i class="fa fa-trophy"></i>
                  </div>
               </div>
               <div class="widget-summary-col">
                  <div class="summary center">
                     <h4 class="title"></h4>
                     <div class="info">
                        <div>
                           <a href="/top-1000"><strong class="amount">Top 1000</strong></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</section>
<section class="panel">
   <div class="col-xs-4">
      <section class="panel panel-featured-left panel-featured-quartenary">
         <div class="panel-body">
            <div class="widget-summary">
               <div class="widget-summary-col widget-summary-col-icon">
                  <div class="summary-icon bg-quartenary">
                     <i class="fa fa-user"></i>
                  </div>
               </div>
               <div class="widget-summary-col">
                  <div class="summary center">
                     <h4 class="title"></h4>
                     <div class="info">
                        <div>
                           <a href="top-100-by-genre"><strong class="amount">By Genre</strong></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</section>
<section class="panel">
<div class="col-xs-4">
   <section class="panel panel-featured-left panel-featured-quartenary">
      <div class="panel-body">
         <div class="widget-summary">
            <div class="widget-summary-col widget-summary-col-icon">
               <div class="summary-icon bg-quartenary">
                  <i class="fa fa-calendar"></i>
               </div>
            </div>
            <div class="widget-summary-col">
               <div class="summary center">
                  <h4 class="title"></h4>
                  <div class="info">
                     <div>
                        <a href="/top-100-by-year"><strong class="amount">By Year</strong></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
</div>