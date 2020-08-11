@extends('admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Update Product
                  </div>
                  <div class="card-body">
                         

                     
                      <form action="{{  route('admin.productUpdate' , $product->id)}}" method="post" enctype="multipart/form-data" >
                        
                        @csrf
                        
                         @include('admin.layouts.validationError')

                  
                         <div class="form-group">
                              <label for="exampleInputTitle">Product Title</label>
                              <input type="text" class="form-control" name="title" value="{{ $product['title'] }}">
                          </div>
                          
                       
                          <div class="form-group">
                            <label for="category">Product Category:</label>
                            <select class="form-control" name="category">
                            @foreach($category as $category)
                                <option value="{{ $category['id'] }}">{{ $category['name'] }}</option>
                 @endforeach
                               
                            </select>
                        </div>
                         
                         <div class="form-group">
                            <label for="category">User Type:</label>
                            <select class="form-control" name="utype">
                               
                                <option value="Admin">Admin</option>
             
                            </select>
                        </div>
                         
                        <div class="form-group">
                            <label for="category">Status:</label>
                            <select class="form-control" name="status">
                     
                                <option value="1">Active</option>
                                <option value="0">Deactive</option>
                 
                               
                            </select>
                        </div>
                          
                          
                          <div class="form-group">
                              <label for="exampleInputDescription">Product Description</label>
                              <textarea class="form-control" name="description" rows="8" cols="70" >{{ $product['description'] }}</textarea>
                              
                          </div>
                          
                          <div class="form-group">
                              <label for="quantity">Quantity</label>
                              <input type="number" class="form-control" name="quantity" value="{{ $product['quantity'] }}">
                              
                          </div>
                          
                          <div class="form-group">
                              <label for="price">Price</label>
                              <input type="number" class="form-control" name="price" value="{{ $product['price'] }}">
                              
                          </div>
                          
                          <div class="form-group">
                              <label for="price">My Price</label>
                              <input type="number" class="form-control" name="myprice" value="{{ $product['My_Price'] }}">
                              
                          </div>
                          
                          <div class="form-group">
                              <label for="product_image">Image</label>
                              <input type="file" class="form-control" name="image" placeholder="Enter Image">
                          </div>
                 
                          <button type="submit" name="submit" value="submit" class="btn btn-primary">Update</button>
                      </form>

                  </div>
              </div>


          </div>
      </div>
      <!-- main-panel ends -->


      @endsection