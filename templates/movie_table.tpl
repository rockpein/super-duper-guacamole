% rebase('templates/base.tpl')
<section role="main" class="content-body">
<header class="page-header">
   <h2>{{title}}</h2>
   <div class="right-wrapper pull-right">
      <ol class="breadcrumbs">
         <li>
            <a href="/">
            <i class="fa fa-home"></i>
            </a>
         </li>
         <li><span>Pages</span></li>
         <li><span>{{title}}</span></li>
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
      <h2 class="panel-title">{{title}}</h2>
   </header>
   <div class="panel-body">
      <table class="table table-bordered table-striped mb-none"id="datatable-default-order">
         <thead>
            <tr>
               <th class="center">Title</th>
               <th class="center">Genre</th>
               <th class="center">Rating</th>
               <th class="center">Votes</th>
               <th class="center">Release Date</th>
               <th class="center">Adults</th>
               <th class="center">Watchlist </th>
            </tr>
         </thead>
         <tbody>
            %for row in rows[1:]:
            <tr>
               <td class="center"><a href="movie?movie_title={{row[0]}}">{{row[0]}}</a></td>
               %for col in row[1:]:
               <td class="center">{{col}}</td>
               %end
               <td class="center"><a href="/my-movies?add_wishlist={{row[0]}}" class="wishlist_add">Add +</a></td>
            </tr>
            %end
         </tbody>
      </table>
   </div>
</section>
<!-- end: page -->

