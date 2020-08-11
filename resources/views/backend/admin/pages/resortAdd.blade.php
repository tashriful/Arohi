@extends('backend.admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Add Resorts
                  </div>
                  <div class="card-body">
                         

                     
                      <form action="" method="post" enctype="multipart/form-data" >
                        
                        @csrf
                        
                         @include('backend.admin.layouts.validationError')

                        
                         <div class="form-group">
                              <label for="exampleInputName">Resort Name :</label>
                              <input type="text" class="form-control" name="title" placeholder="Resort Name">
                          </div>
                          
                           

                    <div class="form-group">
                        <label for="exampleInputDescription">Resort Description :</label>
                        <textarea class="form-control" name="description" rows="8" cols="70" placeholder="Enter Description"></textarea>

                    </div>

                    <div class="form-group">
                        <label for="star">Star :</label>
                        <input type="number" class="form-control" name="star" placeholder="Enter Hotel star">

                    </div>

                    <div class="form-group">
                        <label for="price">Price Starts From :</label>
                        <input type="number" class="form-control" name="price" placeholder="Enter Price">

                    </div>
                    <div class="form-group">
                        <label for="product_image">Resort Image :</label>
                        <input type="file" class="form-control" name="image" placeholder="Enter Image">
                    </div>
                         
                    <div class="form-group">
                              <label for="exampleInputLocation">Resort Location :</label>
                              <input type="text" class="form-control" name="location" placeholder="Enter Hotel in Which City">
                          </div>
                          
                    <div class="form-group">
                              <label for="exampleInputAddress">Resort Full Address :</label>
                              <input type="text" class="form-control" name="address" placeholder="Hotel location">
                          </div>
                          
                          
                          <button type="submit" name="submit" value="submit" class="btn btn-primary">Submit</button>
                      </form>

                  </div>
              </div>


          </div>
      </div>
      <!-- main-panel ends -->


      @endsection