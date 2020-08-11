@extends('frontend.layouts.master')
@section('content')

<section style="margin-top:2%;" class="search-result">
    <div class="container">
       <h1>Holidays Packages Are</h1>
        <div style="border:2px solid darkslategray;height:;" class="row">

        @foreach($holiday as $holiday)
           <div class="col-md-4">

            <div class="card-body">
                <div class="card">
                    <img style="height:200px; width:300px; " class="card-img-top feature-img" src="{{ asset('images/holiday_package/'.$holiday->image) }}" height="" width="" alt="Card image">
                    <div class="card-body">
                        <a href="{{  route('holidayPackageDetails' ,$holiday->id) }}">
                            <h4 class="card-title"> {{ $holiday->package_name }} </h4>
                        </a>
                        <p class="card-text">Price : {{ $holiday->price }}</p>
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