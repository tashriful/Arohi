@extends('backend.admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Add Pick and Drops
                  </div>
                  <div class="card-body">
                         

                     
                      <form action="" method="post" enctype="multipart/form-data" >
                        
                        @csrf
                        
                         @include('backend.admin.layouts.validationError')

                        
                          <div class="form-group">
                              <label for="exampleInputLocation">Location :</label>
                              <input type="text" class="form-control" name="location" placeholder="Enter Location">
                          </div>
                          
                          <div class="form-group">
                              <label for="exampleInputLocation">Destination From :</label>
                              <input type="text" class="form-control" name="from" placeholder="Enter Destination From">
                          </div>
                          
                          <div class="form-group">
                              <label for="exampleInputLocation">Destination To :</label>
                              <input type="text" class="form-control" name="to" placeholder="Enter Destination To">
                          </div>
                          
                           

                    <div class="form-group">
                        <label for="exampleInputDescription">Car Description :</label>
                        <textarea class="form-control" name="description" rows="8" cols="70" placeholder="Enter Description"></textarea>

                    </div>

                    <div class="form-group">
                        <label for="person">Person :</label>
                        <input type="number" class="form-control" name="person" placeholder="Enter Person">

                    </div>

                    <div class="form-group">
                        <label for="price">Price Starts From :</label>
                        <input type="number" class="form-control" name="price" placeholder="Enter Price">

                    </div>
                   
                          
                          
                          <button type="submit" name="submit" value="submit" class="btn btn-primary">Submit</button>
                      </form>

                  </div>
              </div>


          </div>
      </div>
      <!-- main-panel ends -->


      @endsection