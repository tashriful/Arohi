@extends('admin.layouts.master')
      @section('content')
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Account Information
                  </div>
                  <div class="card-body">

                      <table class="table table-dark">
                          <thead>
                              <tr>
                                  <th scope="col">Order No</th>
                                  <th scope="col">Price</th>
                                  <th scope="col">Reseller Name</th>
                                  <th scope="col">Reseller P'ammount</th>
                                  <th scope="col">Supplier Name</th>
                                  <th scope="col">Supplier P'ammount</th>
                                  <th scope="col">My Price</th>
                                  <th scope="col">Status</th>
                                  
                              </tr>
                          </thead>
                          <tbody>
                              @foreach($order as $order)
                              <tr>
                                  <th scope="row">{{$order['id']}}</th>
                                  <th scope="row">{{$order['price']}}</th>
                                  <td>{{ $order->user->name }}</td>

                                  
                                  <td>
                                
                                      {{$order['price']}}
                                      -
                                      {{ \App\product::where(['id' => $order->product_id])->pluck('My_Price')->first() }}
                                      =
                                      {{$order['price']- \App\product::where(['id' => $order->product_id])->pluck('My_Price')->first() }}
                                  </td>
                                  <td>{{ \App\Supplier::where(['id' => $order->uploader_id])->pluck('name')->first() }}
                                  </td>
                                   <td>
                                  
                                  {{ \App\product::where(['id' => $order->product_id])->pluck('price')->first() }}
                                  </td>
                                  <td>
                                  {{ \App\product::where(['id' => $order->product_id])->pluck('My_Price')->first() }}
                                  </td>
                                  <td>
                                  <p>
                                      @if($order['is_paid'])
                                      <button type="button" class="btn btn-success btn-sm">Paid</button>
                                      @else
                                      <button type="button" class="btn btn-danger btn-sm">Unpaid</button>
                                      @endif
                                  </p>
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