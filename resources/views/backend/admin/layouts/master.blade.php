<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <!-- Required meta tags -->
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Admin Panel</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="node_modules/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="node_modules/simple-line-icons/css/simple-line-icons.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--datepicker -->
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
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
  
  @include('backend.admin.partials.navbar')
  
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
     
      @include('backend.admin.partials.leftbar')
     
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