@extends('backend.admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                     Resorts List
                  </div>
                 
                       @include('backend.admin.layouts.validationError')

                      <table style="table-layout: fixed;width: 100%;" class="table table-dark">
                          <thead>
                              <tr>
                                  <th>Resort Name</th>
                                  <th>Package Category</th>
                                  <th>Package Image</th>
                                  <th>Rooms Price</th>
                                  <th>Persons</th>
                                  <th>Description</th>
                                  <th>Action</th>
                              </tr>
                          </thead>
                          <tbody>
                              @foreach($resort as $resort)
                              <tr>
                                  <th scope="row">{{ $resort->resort->title }}</th>
                                  
        
                                  <td>{{$resort['package_category']}}</td>
                                  <td>
                                  <img style="height:80px;width:80px;" src="{{ asset('images/resort_packages/'. $resort->image) }}">
                                  </td>
                                  <td>{{$resort['price']}}</td>
                                  <td>{{$resort['person']}}</td>
                                  
                                  <td>{{ str_limit($resort['description'], $limit = 80, $end = '...')  }}</td>
                                  <!--<td>
                                       <a href="#deleteModal{{ $resort->id}}" data-toggle="modal">Remove</a> |
                                       <a href="{{ route('admin.hotelRoomEdit' , $resort->id) }}" >Edit</a> |
                                      <!-- Button trigger modal -->
                                      
                                      <!-- Modal 
                                      <div class="modal fade" id="deleteModal{{ $resort->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                              <div class="modal-content">
                                                  <div class="modal-header">
                                                      <h5 style="color:black;" class="modal-title" id="exampleModalLabel">Are you want to delete??</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                          <span aria-hidden="true">&times;</span>
                                                      </button>
                                                  </div>
                                                  <div class="modal-body">
                                                      <form action="{{ route('admin.hotelRoom.delete', $resort->id)}}" method="post">
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



                                  </td>-->
                    
                                  
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