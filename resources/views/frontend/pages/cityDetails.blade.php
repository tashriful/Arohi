@extends('frontend.layouts.master1')
@section('content')

<section style="margin-top:2%;" class="search-result">
    <div class="container">
       <h1 style="color:blue;" >{{ $city}}  All Resources :</h1>
        <div style="border:2px solid darkslategray;" class="row">

            @if(!$data->isEmpty())
            @foreach($data as $data)

            <div style="margin-top:2%;" class="col-sm-3">
                <img width="100%" height="100%" src="{{ asset('images/Hotels/'.$data->image) }}">
            </div>
            <div style="margin-top:2%;" class="col-sm-7">
                <a href="{{  route('hotelDetails' ,$data->id) }}">
                    <h2>{{ $data->title}}</h2>
                </a>
                <b>
                    <p style="color:crimson;">{{ $data-> star}} Star</p>
                </b>
                <p style="color:#4B8B4B;">{{ $data-> address}}</p>
                <span style="color:#4B8B4B;">Location: {{ $data-> Location}}</span>
                <p style="color:#292b0c;">{{ str_limit($data['description'], $limit = 180, $end = '...')  }}</p>
            </div>
            <div style="margin-top:2%;" class="col-sm-2">
                <div class="d-flex justify-content-end">

                    <h3 style="color:red;">{{ $data->price_range}} TK</h3>
                </div>
                <div class="d-flex justify-content-end">
                    <a href="{{  route('hotelDetails' ,$data->id) }}">
                        <button type="button" class="btn btn-primary">Details</button>
                    </a>
                </div>



            </div>


            @endforeach
            @else
            <div style="margin-top:2%;" class="col-sm-12">
                <center>
                    <h1 style="color:#0098be">Dear Valuable Customer</h1>
                    <h1 style="color:#0098be">Please Call To Our Call Center</h1>
                    <i class="fa fa-phone" style="font-size:36px;color:red;display: inline-block;border-radius: 60px;box-shadow: 0px 0px 2px red;padding: 0.5em 0.6em;"></i>
                    <h1 style="color:red">01401234764</h1>
                    <h1 style="color:#0098be">We Might Arrange</h1>
                    <h1 style="color:#0098be">Your</h1>
                    <h1 style="color:#0098be">Desired Service</h1>
                </center>
                <h4 style="color:#0098be">Thanks Team AROHI</h4>
            </div>


            @endif


        </div>
    </div>

</section>

@endsection





</tr>