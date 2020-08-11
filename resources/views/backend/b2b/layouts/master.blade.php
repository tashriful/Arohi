<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>B2B Panel</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="node_modules/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="node_modules/simple-line-icons/css/simple-line-icons.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href={{ asset('css/admin_style.css')}}>
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
</head>

<body>
  
  <!--navbar -->
  
  @include('backend.b2b.partials.navbar')
  
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
     
      @include('backend.b2b.partials.leftbar')
     
      <!-- partial -->
      
      
      @yield('content')
      
      
      
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src={{ asset('js/jquery-3.3.1.slim.min.js')}}></script>
  <script src={{ asset('js/popper.min.js')}}></script>
  <script src={{ asset('js/bootstrap.min.js')}}></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src={{ asset('js/off-canvas.js')}}></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  
  <!-- End custom js for this page-->
</body>

</html>