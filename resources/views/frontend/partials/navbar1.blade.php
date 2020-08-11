<nav style="margin-bottom:0;background-color:#02517C"class="navbar navbar-expand-md navbar-dark">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul style="margin-left:10%;" class="navbar-nav ">
                
                
                <li class="nav-item">
                    <a style="color:white" class="nav-link" href="{{route('cityDetails', ['city' => $city]) }}">HOTEL</a>
                </li>
                <li class="nav-item">
                    <a style="color:white" class="nav-link" href="#">PICK & DROP</a>
                </li>
                <li class="nav-item">
                    <a style="color:white" class="nav-link" href="{{ route('food') }}">AIR TICKET</a>
                </li>
                <li class="nav-item">
                    <a style="color:white" class="nav-link" href="{{ route('food') }}">FOOD</a>
                </li>
                <li class="nav-item">
                    <a style="color:white" class="nav-link" href="{{ route('tourGuide') }}">TOUR GUIDE</a>
                </li>
                <li class="nav-item">
                    <a style="color:white" class="nav-link" href="{{ route('dayTrip') }}">DAY TRIP</a>
                </li>
                <li class="nav-item">
                    <a style="color:white" class="nav-link" href="{{ route('holidayPackage') }}">HOLIDAY PACKAGE</a>
                </li>
               
                @guest
                            <li class="nav-item-login d-lg-none d-xl-none">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item-login d-xl-none">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item-login  dropdown d-xl-none">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
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
    </nav>