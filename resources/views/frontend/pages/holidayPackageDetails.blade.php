@extends('frontend.layouts.master')
@section('content')

<section style="margin-top:2%;" class="">
    <div class="container">
        <div class="row">
             <div class="col-sm-8">
                <img width="100%" src="{{ asset('images/holiday_package/'.$data->image) }}">
                
                    <h1>{{ $data->package_name }}</h1>
                    <p>Country : {{ $data->country}}</p>
                    <p>City : {{ $data->city}}</p>
                
            </div>
            <div style="margin-top:0%;background-color:#8EA989;height:410px;" class="col-sm-4">
                <center>
                    <div style="margin-top:0%;" class="card-body">
                <div class="card">
                    
                    <div class="card-body">
                    <p> Tour Duration :{{ $data->total_day }}  Day Tour </p>
                     <p> Location: {{ $data->city }} </p>
                       <p> Total Persons : {{ $data->person }} </p>
                       <p> Valid From :{{ $data->valid_from }} </p>
                       <p>Valid To :{{ $data->valid_to }}</p>
                        
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
        <br>
        <div style="background-color:#D6F1D1" class="row">


            <div style="margin-top:2%;" class="col-sm-12">
               <h2 >TOUR Details :</h2>
                <pre style="color:crimson;">{{ $data-> tour_details}}</pre>
            </div>
            
            
        </div>
        <br>
        
        <div style="background-color:#D6F1D1" class="row">


            <div style="margin-top:2%;" class="col-sm-12">
               <h2 >Included Service :</h2>
                <pre style="color:crimson;">{{ $data->included_services}}</pre>
            </div>
            
            
        </div>
        <br>
        
        <div style="background-color:#D6F1D1" class="row">


            <div style="margin-top:2%;" class="col-sm-12">
               <h2 >Excluded Service :</h2>
                <pre style="color:crimson;">{{ $data->Excluded_services}}</pre>
            </div>
            
            
        </div>
        <br>
        
        <div style="background-color:#D6F1D1" class="row">


            <div style="margin-top:2%;" class="col-sm-12">
               <h2 >Acommodation :</h2>
                <pre style="color:crimson;">{{ $data->Acommodation}}</pre>
            </div>
            
            
        </div>

    </div>

</section>
@endsection