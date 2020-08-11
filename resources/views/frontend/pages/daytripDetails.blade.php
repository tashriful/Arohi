@extends('frontend.layouts.master')
@section('content')

<section style="margin-top:2%;" class="">
    <div class="container">
        <div class="row">
             <div class="col-sm-8">
                <img width="100%" src="{{ asset('images/daytrips/'.$data->image) }}">
                
                    <h1>{{ $data->package_name }}</h1>
                    <p>{{ $data->country}}</p>
                    <p>{{ $data->city}}</p>
                
            </div>
            <div style="margin-top:0%;background-color:#8EA989;height:410px;" class="col-sm-4">
                <center>
                    <div style="margin-top:0%;" class="card-body">
                <div class="card">
                    
                    <div class="card-body">
                    <p> Tour Duration : Full Day Tour </p>
                     <p> Location: {{ $data->city }} </p>
                       <p> Tour Available : Year Round </p>
                       <p> Best Time To Go: October-March </p>
                        
                        <h4 style="color:red" class="card-text">PRICE : {{ $data->price }} BDT</h4>
                        @include('frontend.pages.orderButton')
                    </div>
                </div>
            </div>
                </center>
                
            </div>
        </div>

        <div style="background-color:#D6F1D1" class="row">


            <div style="margin-top:2%;" class="col-sm-12">
               <h2 >TOUR DESCRIPTION :</h2>
                <pre style="color:crimson;">{{ $data-> description}}</pre>
            </div>
            
            
        </div>

    </div>

</section>
@endsection