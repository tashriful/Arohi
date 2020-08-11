@extends('frontend.layouts.master')
@section('content')

<section style="margin-top:2%;" class="search-result">
    <div class="container">
        <div style="border:2px solid darkslategray;" class="row">
            @if(!$data->isEmpty())
            @foreach($data as $data)
            <!--<div style="margin-top:2%;" class="col-sm-12">
              <h2>{{ $data->airlines_name}}</h2>
               <div class="d-flex flex-row-reverse">
                   <b><p style="color:crimson;"> {{ $data->price}}</p></b>
                <a href="{{  route('hotelDetails' ,$data->id) }}">
               <button type="button" class="btn btn-primary">Details</button>
                    </a>
               </div>
            </div>-->
             <div style="margin-top:2%;" class="col-sm-4">
               <h2 style="color:crimson">Location: {{ $data->location}}</h2>
               <div class="d-flex flex-row">
                   <div class="p-2"><h4 style="color:blue">{{ $data->from }}</h4></div>
               </div>
               <p class="mb-2" style="color:slategray"/>Description : {{ $data->description}}</p>
                   
            </div>
            <div style="margin-top:2%;" class="col-sm-2 justify-content-end">
                <div class="p-2 mt-5"><i class="fa fa-arrow-right" style="font-size:48px;color:blue"></i>To</div>
            </div>
             <div style="margin-top:2%;" class="col-sm-4">
               <div class="d-flex flex-row">
                 
                   <div class="p-2 mt-5"><h4 style="color:blue">{{ $data->to}}</h4></div>
               </div>
               <p class="mb-2" style="color:slategray">Person : {{ $data->person}}</p>
               
               
            </div>
            
           
            <div style="margin-top:2%;" class="col-sm-2 justify-content-end">
                <b><h3 style="color:crimson;"> {{ $data->price}} BDT</h3></b>
                @include('frontend.pages.pickOrderButton')
            </div>
            
         <!--<div style="margin-top:2%;" class="col-sm-2">
                <div class="d-flex justify-content-end">
                    
                    <h3 style="color:darkslategray;">Price : </h3>
                </div>
                <div class="d-flex justify-content-end">
              <a href="{{  route('hotelDetails' ,$data->id) }}">
               <button type="button" class="btn btn-primary">Details</button>
                    </a>
                </div> 
                
                
                
            </div>-->
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