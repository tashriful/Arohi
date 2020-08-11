@extends('backend.admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Add Day Trip Packages
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
                        <label for="person">Persons :</label>
                        <input type="number" class="form-control" name="person" placeholder="Enter person">

                    </div>
                    
                    <div class="form-group">
                        <label for="exampleInputDescription">Package Description :</label>
                        <textarea class="form-control" name="description" rows="8" cols="70" placeholder="Enter Package Description"></textarea>

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
      <!-- main-panel ends -->


      @endsection