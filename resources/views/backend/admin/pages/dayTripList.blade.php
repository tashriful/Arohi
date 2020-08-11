@extends('backend.admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                     Daytrips Package List
                  </div>
                 
                       @include('backend.admin.layouts.validationError')

                      <table style="table-layout: fixed;width: 100%;" class="table table-dark">
                          <thead>
                              <tr>
                                  <th>Package Name</th>
                                  <th>Image</th>
                                  <th>Country</th>
                                  <th>City</th>
                                  <th>Price</th>
                                  <th>Persons</th>
                                  <th>Description</th>
                              </tr>
                          </thead>
                          <tbody>
                              @foreach($daytrip as $data)
                              <tr>
                                  <th scope="row">{{ $data->package_name }}</th>
        
                                  <td>
                                  <img style="height:80px;width:80px;" src="{{ asset('images/daytrips/'. $data->image) }}">
                                  </td>
                                  <td>{{$data['country']}}</td>
                                  <td>{{$data['city']}}</td>
                                  <td>{{$data['price']}}</td>
                                  <td>{{$data['person']}}</td>
                                  
                                  <td>{{ str_limit($data['description'], $limit = 80, $end = '...')  }}</td>
                                  <!--<td>
                                       <a href="#deleteModal{{ $data->id}}" data-toggle="modal">Remove</a> |
                                       <a href="{{ route('admin.hotelRoomEdit' , $data->id) }}" >Edit</a> |
                                      <!-- Button trigger modal -->
                                      
                                      <!-- Modal 
                                      <div class="modal fade" id="deleteModal{{ $data->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                              <div class="modal-content">
                                                  <div class="modal-header">
                                                      <h5 style="color:black;" class="modal-title" id="exampleModalLabel">Are you want to delete??</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                          <span aria-hidden="true">&times;</span>
                                                      </button>
                                                  </div>
                                                  <div class="modal-body">
                                                      <form action="{{ route('admin.hotelRoom.delete', $data->id)}}" method="post">
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