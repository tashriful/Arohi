@extends('backend.admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Update Hotel Rooms Category
                  </div>
                  <div class="card-body">
                         

                     
                      <form action="{{  route('admin.hotelRoomUpdate' , $hotel->id)}}" method="post" enctype="multipart/form-data" >
                        
                        @csrf
                        
                         @include('backend.admin.layouts.validationError')

                        
                         <div class="form-group">
                        <label for="HotelName">Hotel Name:</label>
                        <select class="form-control" name="hotel_id">
                            <option value="{{ $hotel->hotel_id }}">{{\App\Hotel::where(['id' => $hotel->hotel_id])->pluck('title')->first() }}</option>
                           

                        </select>
                    </div>
                         
                         <div class="form-group">
                        <label for="exampleInputTitle">Room Category</label>
                        <input type="text" name="room_category" value="{{ $hotel->room_category }}" class="form-control"  placeholder="Enter Room Category">
                    </div>
                          
                           

                    <div class="form-group">
                        <label for="exampleInputDescription">Room Description :</label>
                        <textarea class="form-control"  name="description" rows="8" cols="70" placeholder="Enter Room Description">{{ $hotel->description }}</textarea>

                    </div>

                    <div class="form-group">
                        <label for="person">Persons :</label>
                        <input type="number" value="{{ $hotel->person }}" class="form-control" name="person" placeholder="Enter person" value="{{ $hotel->person }}">

                    </div>

                    <div class="form-group">
                        <label for="price">Price :</label>
                        <input type="number" value="{{ $hotel->price }}" class="form-control" name="price" placeholder="Enter Price" value="{{ $hotel->price }}">

                    </div>
                    <div class="form-group">
                        <label for="product_image">Hotel Image :</label>
                        <input type="file" value="{{ $hotel->image }}"  class="form-control" name="image" placeholder="Enter Image">
                    </div>
                         
                    
                          
                          
                          <button type="submit" name="submit" value="submit" class="btn btn-primary">Submit</button>
                      </form>

                  </div>
              </div>


          </div>
      </div>
      <!-- main-panel ends -->


      @endsection