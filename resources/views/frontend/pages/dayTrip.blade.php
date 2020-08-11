@extends('frontend.layouts.master')
@section('content')

<section style="margin-top:2%;" class="search-result">
    <div class="container">
       <h1>Daytrips Packages are</h1>
        <div style="border:2px solid darkslategray;height:;" class="row">

        @foreach($daytrip as $daytrip)
           <div class="col-md-4">

            <div class="card-body">
                <div class="card">
                    <img style="height:200px; width:300px; " class="card-img-top feature-img" src="{{ asset('images/daytrips/'.$daytrip->image) }}" height="" width="" alt="Card image">
                    <div class="card-body">
                        <a href="{{  route('daytripDetails' ,$daytrip->id) }}">
                            <h4 class="card-title"> {{ $daytrip->package_name }} </h4>
                        </a>
                        <p class="card-text">Price : {{ $daytrip->price }}</p>
                    </div>
                </div>
            </div>
        </div>
            
            @endforeach




        </div>
    </div>

</section>

@endsection





</tr>