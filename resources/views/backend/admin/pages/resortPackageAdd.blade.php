@extends('backend.admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Add Hotel Rooms Category
                  </div>
                  <div class="card-body">
                         

                     
                      <form action="" method="post" enctype="multipart/form-data" >
                        
                        @csrf
                        
                         @include('backend.admin.layouts.validationError')

                        
                         <div class="form-group">
                        <label for="HotelName">Resort Name:</label>
                        <select class="form-control" name="resort_id">
                            @foreach($resort as $resort)
                            <option value="{{ $resort['id'] }}">{{ $resort['title'] }}</option>
                            @endforeach

                        </select>
                    </div>
                         
                         <div class="form-group">
                        <label for="exampleInputTitle">Package Category</label>
                        <input type="text" class="form-control" name="package_category" placeholder="Enter Package Category">
                    </div>
                          
                           

                    <div class="form-group">
                        <label for="exampleInputDescription">Package Description :</label>
                        <textarea class="form-control" name="description" rows="8" cols="70" placeholder="Enter Package Description"></textarea>

                    </div>

                    <div class="form-group">
                        <label for="person">Persons :</label>
                        <input type="number" class="form-control" name="person" placeholder="Enter person">

                    </div>

                    <div class="form-group">
                        <label for="price">Price :</label>
                        <input type="number" class="form-control" name="price" placeholder="Enter Price">

                    </div>
                    <div class="form-group">
                        <label for="product_image">Package Image :</label>
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