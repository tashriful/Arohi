@extends('admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Show Product
                  </div>
                 
                       @include('admin.layouts.validationError')

                      <table style="table-layout: fixed;width: 100%;" class="table table-dark">
                          <thead>
                              <tr>
                                  <th>Title</th>
                                  <th>Picture</th>
                                  <th>Supplier Price</th>
                                  <th>My Price</th>
                                  <th>Quantity</th>
                                  <th>Status</th>
                                  <th>Description</th>
                                  <th>Action</th>
                              </tr>
                          </thead>
                          <tbody>
                              @foreach($products as $product)
                              <tr>
                                  <th scope="row">{{$product['title']}}</th>
                                  
                                  <td>
                                  @foreach ( $product->images as $image )
                                  <img style="height:80px;width:80px;" src="{{ asset('images/products/'. $image->image) }}">
                                  @endforeach
                                  </td>
                                  <td>{{$product['price']}}</td>
                                  <td>{{$product['My_Price']}}</td>
                                  <td>{{$product['quantity']}}</td>
                                  <td> @if( $product['status'] == 0)
                                  Deactive
                                  @endif
                                  @if( $product['status'] == 1)
                                  Active
                                  @endif
                                  </td>
                                  <td>{{ str_limit($product['description'], $limit = 80, $end = '...')  }}</td>
                                  <td>
                                      <a href="#deleteModal{{ $product->id}}" data-toggle="modal">Remove</a> |
                                       <a href="{{ route('admin.productEdit' , $product->id) }}" >Update</a> |
                                      <!-- Button trigger modal -->
                                      
                                      <!-- Modal -->
                                      <div class="modal fade" id="deleteModal{{ $product->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                              <div class="modal-content">
                                                  <div class="modal-header">
                                                      <h5 style="color:black;" class="modal-title" id="exampleModalLabel">Are you want to delete??</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                          <span aria-hidden="true">&times;</span>
                                                      </button>
                                                  </div>
                                                  <div class="modal-body">
                                                      <form action="{{ route('admin.product.delete', $product->id)}}" method="post">
                                                        {{ csrf_field() }}   
                                                          
                                                          <button type="submit" class="btn btn-danger" >Delete</button>
                                                          
                                                      </form>
                                                      <div class="modal-footer">
                                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                      </div>
                                                  </div>
                                                
                                              </div>
                                          </div>
                                      </div>



                                  </td>
                                  </tr>

                                  @endforeach
                          </tbody>
                      </table>
                     
                     
                  </div>
              </div>


          </div>
      </div>
      <!-- main-panel ends -->


      @endsection