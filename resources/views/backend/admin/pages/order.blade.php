@extends('backend.admin.layouts.master')
      @section('content')
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Order Information
                  </div>
                  <div class="card-body">

                      <table class="table table-dark">
                          <thead>
                              <tr>
                                  <th scope="col">Order No</th>
                                  <th scope="col">User Name</th>
                                  <th scope="col">Order Person Name</th>
                                  <th scope="col">Hotel Name</th>
                                  <th scope="col">Room Category</th>
                                  <th scope="col">Total Rooms</th>
                                  <th scope="col">Check in</th>
                                  <th scope="col">Check Out</th>
                                  <th scope="col">Price</th>
                                  <th scope="col">Phone Number</th>
                                  <th scope="col">Votar ID</th>
                                  <th scope="col">Address</th>
                                  
                                  
                                  
                                  
                              </tr>
                          </thead>
                          <tbody>
                              @foreach($order as $order)
                              <tr>
                                  <th scope="row">{{$order['id']}}</th>
                                 
                                  
                                  <td>{{ $order->user->name}}</td>
                                  <td>{{$order['name']}}</td>
                                  <td>{{ $order->hotel->title}}</td>
                                  
                                  <td>{{\App\Hotel_details::where(['id' => $order->room_id])->pluck('room_category')->first() }}</td>
                                  
                                  <td>{{$order['total_room']}}</td>
                                  <td>{{$order['check_in']}}</td>
                                  <td>{{$order['check_out']}}</td>
                                  <td>{{$order['price']}}</td>
                                  <td>{{$order['number']}}</td>
                                  <td>{{$order['votar_id']}}</td>
                                  <td>{{$order['address']}}</td>
                                
                                  
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