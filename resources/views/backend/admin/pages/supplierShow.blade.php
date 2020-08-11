@extends('admin.layouts.master')
      @section('content')
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Supplier Information
                  </div>
                  <div class="card-body">
                      
                      @if(Session::has('success'))
                        <div class="alert alert-success">

                        <p>{{ Session::get('success') }}</p>
                        </div>
                      @endif

                      <table style="table-layout: fixed;width: 100%;" class="table table-dark">
                          <thead>
                              <tr>
                                  <th scope="col">Name</th>
                                  <th scope="col">Company Name</th>
                                  <th scope="col">Business Category</th>
                                  <th scope="col">Email</th>
                                  <th scope="col">Number</th>
                                  <th scope="col">Address</th>
                                  <th scope="col">Status</th>
                                  <th scope="col">User Name</th>
                                  <th scope="col">Action</th>
                                  
                              </tr>
                          </thead>
                          <tbody>
                              @foreach($std as $value)
                              <tr>
                                  <th scope="row">{{$value['name']}}</th>
                                  <td>{{$value['company_name']}}</td>
                                  <td>{{$value['business_category']}}</td>
                                  <td>{{$value['email']}}</td>
                                  <td>{{$value['number']}}</td>
                                  <td>{{$value['address']}}</td>
                                  <td>
                                      @if( $value['status'] == 0)
                                      Deactive
                                      @endif
                                      @if( $value['status'] == 1)
                                      Active
                                      @endif
                                  </td>
                                  <td>{{$value['username']}}</td>
                                  <td>
                                      <a href="#deleteModal{{ $value->id}}" data-toggle="modal">Remove</a> |
                                       <a href="{{ route('admin.supplierEdit' , $value->id) }}" >Update</a> |
                                      <!-- Button trigger modal -->
                                      
                                      <!-- Modal -->
                                      <div class="modal fade" id="deleteModal{{ $value->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                              <div class="modal-content">
                                                  <div class="modal-header">
                                                      <h5 style="color:black;" class="modal-title" id="exampleModalLabel">Are you want to delete??</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                          <span aria-hidden="true">&times;</span>
                                                      </button>
                                                  </div>
                                                  <div class="modal-body">
                                                      <form action="{{ route('admin.supplierDelete', $value->id)}}" method="post">
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