@extends('backend.admin.layouts.master')
      @section('content')
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Order Information
                  </div>
                  <div class="card-body">

                     <table border="0">
                    <tr>
                        <td>Product Name :</td>
                        <td>{{ $order->product->title}}</td>
                    </tr>
                    
                    <tr>
                        <td>Quantity :</td>
                        <td>{{ $order->quantity}}</td>
                    </tr>
                    <tr>
                        <td>Price :</td>
                        <td>{{ $order->price}}</td>
                    </tr>
                    <tr>
                        <td>Customer Name :</td>
                        <td>{{ $order->name}}</td>
                    </tr>
                    
                    <tr>
                        <td>Customer Number :</td>
                        <td>{{ $order->number}}</td>
                    </tr>
                    <tr>
                        <td>Customer Address :</td>
                        <td>
                            {{ $order->address}}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form action="{{route('admin.paid' , $order->id)}}" method="post">
                                @csrf
                                @if($order->is_paid)
                                <input type="submit" class="btn btn-success" name="complete" value="Payement Paid">
                                @else
                                <input type="submit" class="btn btn-danger" name="complete" value="Pending Payment">
                                @endif
                            </form>
                        </td>
                       
                    </tr>
                </table>
                  </div>
                  </div>


                  </div>
                  </div>
                  <!-- main-panel ends -->


                  @endsection