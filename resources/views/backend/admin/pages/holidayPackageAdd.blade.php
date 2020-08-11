@extends('backend.admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Add Holiday Packages
                  </div>
                  <div class="card-body">
                         

                     
                      <form action="" method="post" enctype="multipart/form-data" >
                        
                        @csrf
                        
                         @include('backend.admin.layouts.validationError')

                        
                         <div class="form-group">
                        <label for="HotelName">Package Name:</label>
                        <input type="text" class="form-control" name="package" placeholder="Enter Package Name">
                    </div>
                         
                         <div class="form-group">
                        <label for="exampleInputTitle">Country</label>
                        <input type="text" class="form-control" name="country" placeholder="Enter Country">
                    </div>
                         
                         <div class="form-group">
                        <label for="exampleInputTitle">City</label>
                        <input type="text" class="form-control" name="city" placeholder="Enter City">
                    </div>
                    <div class="form-group">
                        <label for="person">Total Tour Day :</label>
                        <input type="text" class="form-control" name="total_day" placeholder="Enter Total Tour Day">

                    </div>
                    <div class="form-group">
                       <label for="person">Valid From :</label>
                        <input id="datepicker" name="valid_from" placeholder="Valid From" width="500" />
                    </div>
                    <div class="form-group">
                       <label for="person">Valid To :</label>
                        <input id="datepicker2" name="valid_to" placeholder="Valid To" width="500" />
                    </div>

                    <div class="form-group">
                        <label for="person">Total Persons :</label>
                        <input type="number" class="form-control" name="person" placeholder="Enter Total person">

                    </div>
                    
                    <div class="form-group">
                        <label for="exampleInputDescription">Package Description :</label>
                        <textarea class="form-control" name="description" rows="8" cols="70" placeholder="Enter Package Description"></textarea>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputDescription">Tour Details :</label>
                        <textarea class="form-control" name="tour_details" rows="8" cols="70" placeholder="Enter Tour Details"></textarea>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputDescription">Included Services :</label>
                        <textarea class="form-control" name="included_services" rows="8" cols="70" placeholder="Enter Encluded Services"></textarea>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputDescription">Excluded Services :</label>
                        <textarea class="form-control" name="excluded_services" rows="8" cols="70" placeholder="Enter Excluded Servces"></textarea>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputTitle">Acommodation Details</label>
                        <input type="text" class="form-control" name="acommodation" placeholder="Enter Acommodation Details">
                    </div>

                    <div class="form-group">
                        <label for="price">Price :</label>
                        <input type="number" class="form-control" name="price" placeholder="Enter Price">

                    </div>
                    <div class="form-group">
                        <label for="product_image">Image :</label>
                        <input type="file" class="form-control" name="image" placeholder="Enter Image">
                    </div>
                         
               
                          
                          
                          <button type="submit" name="submit" value="submit" class="btn btn-primary">Submit</button>
                      </form>

                  </div>
              </div>


          </div>
      </div>
      
      <script>
    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap4'
    });
    $('#datepicker2').datepicker({
        uiLibrary: 'bootstrap4'
    });
</script>
      <!-- main-panel ends -->


      @endsection