<!DOCTYPE html>
<html lang="en">

<head>
    <title>AROHI.XYZ</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href={{ asset('css/style.css')}} rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</head>

<body>

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-4 col-sm-4 col-lg-3">
                <a href="{{ route('homepage') }}"> <img style="width:150px;height:100px;position: absolute;margin-top:-15px;" src="{{ asset('images/logo2.jpg') }}"></a>

            </div>

           

            <div style="margin-top:3%;" class="col-lg-3 d-none d-lg-block">
                <div class="quick-contact-icons d-flex">
                    
                    <div class="text">
                        <span style="font-size:15px;font-family:NexaBold;color:#02517C;" class="h5 d-block"><span style="color:red" >HOTLINE : </span> +8801401234764</span>
                    </div>
                </div>
            </div>

            <div style="margin-top:3%;" class="col-lg-3 d-none d-lg-block">
                <div class="quick-contact-icons d-flex">
                    
                    <div class="text">
                        <span style="font-size:15px;font-family:NexaBold;margin-top:2px;color:#02517C;y" class="h5 d-block"><span style="
                        color:red">Email :</span> arohi.contact@gmail.com</span>
                    </div>
                </div>
            </div>
            
             <div style="margin-bottom:0%;" class="col-lg-3 d-none d-lg-block">

                <div class="quick-contact-icons d-flex">
                    @guest
                            <li class="nav-item-login">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item-login">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item-login dropdown">
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
                </div>
            </div>
        </div>
    </div>
    
    <!-- navbar -->
    @include('frontend.partials.navbar1')
    
    @yield('content')
    
    
    
    

</body>

</html>