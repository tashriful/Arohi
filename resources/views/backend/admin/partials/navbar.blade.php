<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
        <a class="" href="{{ route('admin.index') }}"><h1>Admin Panel</h1></a>
      </div>
      
      <div class="navbar-menu-wrapper d-flex align-items-center">
        <!--<ul class="navbar-nav navbar-nav-left header-links d-none d-md-flex">
          <li class="nav-item">
            <a href="#" class="nav-link"><i class="mdi mdi-image-filter"></i>Gallery</a>
          </li>
          <li class="nav-item active">
            <a href="#" class="nav-link"><i class="mdi mdi-email-outline"></i>Inbox</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link"><i class="mdi mdi-calendar"></i>Calendar</a>
          </li>
        </ul>-->
        <ul class="navbar-nav ml-auto">
             @guest
             <li class="nav-item">
                 <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
             </li>
             @if (Route::has('register'))
             <li class="nav-item">
                 <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
             </li>
             @endif
             @else
             <li class="nav-item dropdown">
                
                 <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                     {{ Auth::user()->name }} <span class="caret"></span>
                 </a>

                 <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    
                    
                    
                    
                     <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                         {{ __('Logout') }}
                     </a>
                     

                     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                         @csrf
                     </form>
                 </div>
             </li>
             @endguest
         </ul>
        </div>
        
      
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <i class="fa fa-bars"></i>
        </button>
    </nav>