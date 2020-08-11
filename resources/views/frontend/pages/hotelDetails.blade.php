@extends('frontend.layouts.master')
@section('content')

<section style="margin-top:2%;" class="hotel-details">
    <div class="container">
        <div class="row">
             <div class="col-sm-12">
                <img width="100%" src="{{ asset('images/Hotels/'.$data1->image) }}">
                <center>
                    <h1>{{ $data1->title }}</h1>
                    <p>{{ $data1->address}}</p>
                </center>
            </div>
        </div>

        <div style="border:2px solid darkslategray;" class="row">

            @foreach($data1->hotel_details as $data)

            <div style="margin-top:2%;" class="col-sm-4">
                <img width="100%" height="80%" src="{{ asset('images/hotel_rooms/'.$data->image) }}">
            </div>
            <div style="margin-top:2%;" class="col-sm-6">
                <h2 style="color:blue;">{{ $data->room_category}}</h2>
                <b>
                    <p style="color:crimson;">For {{ $data-> person}} Person</p>
                </b>
                <p style="color:#292b0c;">{{ $data-> description}}</p>
            </div>
            <div style="margin-top:2%;" class="col-sm-2">
                <div class="d-flex justify-content-end">

                    <h3 style="color:red;">Price : {{ $data->price}}</h3>
                </div>
                    <div class="d-flex justify-content-end">

                    @include('frontend.pages.orderButton')
                </div>

            </div>
            @endforeach
        </div>

    </div>

</section>
@endsection