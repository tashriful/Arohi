@extends('backend.b2b.layouts.master')
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
                        
                         @include('backend.b2b.layouts.validationError')

                        
                         <div class="form-group">
                        <label for="HotelName">Hotel Name:</label>
                        <select class="form-control" name="hotel_id">
                            @foreach($hotel as $hotel)
                            <option value="{{ $hotel['id'] }}">{{ $hotel['title'] }}</option>
                            @endforeach

                        </select>
                    </div>
                         
                         <div class="form-group">
                        <label for="exampleInputTitle">Room Category</label>
                        <input type="text" class="form-control" name="room_category" placeholder="Enter Room Category">
                    </div>
                          
                           

                    <div class="form-group">
                        <label for="exampleInputDescription">Room Description :</label>
                        <textarea class="form-control" name="description" rows="8" cols="70" placeholder="Enter Room Description"></textarea>

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
                        <label for="product_image">Hotel Image :</label>
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