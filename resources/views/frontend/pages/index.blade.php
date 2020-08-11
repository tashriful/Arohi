@extends('frontend.layouts.master')
@section('content')
@extends('frontend.layouts.success')
 @include('frontend.partials.scripts')

<section id="cover" onclick="changeImage()" style="background-image: url('../images/cover.jpg');background-color:#87CEEB;" class="bgimage">
    <div class="container h-100">
        <div class="row h-100 justify-content-center align-items-center">
            <form action="{{  route('hotelSearch')}}" method="post">
                @csrf
                <div class="form-row">
                   

                        <div class="form-group col-md-12 ui-widget">
                            <input type="search" style="font-family:NexaBold;" name="location" id="tags" class="form-control" placeholder="Search Area">
                        </div>
                    </div>
                    
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <input id="datepicker" name="checkin" placeholder="Check in" width="300" />
                    </div>


                    <div class="form-group col-md-6">
                        <input id="datepicker2" name="checkout" placeholder="Check Out" width="276" />
                    </div>
                </div>



                <div class="form-row">
                    <div class="form-group col-md-6">
                        <input type="number" name="person" class="form-control" placeholder="Person">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="number" name="room" class="form-control" placeholder="Room">
                    </div>
                </div>
                <button type="submit" class="btn btn-danger">Search</button>



            </form>
        </div>
    </div>
</section>
<section>
    <div class="container">
        <div class="row mt-4">
            <div class="col-12 col-sm-12 ">
                <center>
                    <h1>Trending Cities</h1>
                </center>
            </div>

        </div>
        <div class="row">
            <div class="col-12 col-sm-6 ">
                <a href="{{  route('cityDetails', ['city' => 'DHAKA']) }}"><img width="100%" src="{{ asset('images/home/dhaka.jpg') }}"></a>
                <center><span style="font-size:30px;">DHAKA</span></center>
            </div>
            <div class="col-12 col-sm-6 ">
                <a href="{{  route('cityDetails', ['city' => 'BARISAL']) }}"><img width="100%" src="{{ asset('images/home/barisal.jpg') }}"></a>
                <center><span style="font-size:30px;">BARISAL</span></center>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-sm-6 ">
                <a href="{{  route('cityDetails', ['city' => 'CHATTOGRAM']) }}"><img width="100%" src="{{ asset('images/home/chittagong.jpg') }}"></a>
                <center><span style="font-size:30px;">CHATTOGRAM</span></center>
            </div>
            <div class="col-12 col-sm-6 ">
                <a href="{{  route('cityDetails', ['city' => 'RAJSHAHI']) }}"><img width="100%" src="{{ asset('images/home/rajsahi.jpg') }}"></a>
                <center><span style="font-size:30px;">RAJSHAHI</span></center>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-sm-6 ">
                <a href="{{  route('cityDetails', ['city' => 'KHULNA']) }}"><img width="100%" src="{{ asset('images/home/khulna.jpg') }}"></a>
                <center><span style="font-size:30px;">KHULNA</span></center>
            </div>
            <div class="col-12 col-sm-6 ">
                <a href="{{  route('cityDetails', ['city' => 'RANGPUR']) }}"><img width="100%" src="{{ asset('images/home/rangpur.jpg') }}"></a>
                <center><span style="font-size:30px;">RANGPUR</span></center>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-sm-6 ">
                <a href="{{  route('cityDetails', ['city' => 'SYLHET']) }}"><img width="100%" src="{{ asset('images/home/sylet.jpg') }}"></a>
                <center><span style="font-size:30px;">SYLHET</span></center>
            </div>
            <div class="col-12 col-sm-6 ">
                <a href="{{  route('cityDetails', ['city' => 'MYMENSINGH']) }}"><img width="100%" src="{{ asset('images/home/mymensing.jpg') }}"></a>
                <center><span style="font-size:30px;">MYMENSINGH</span></center>
            </div>
        </div>
    </div>
</section>


<section>
    <div class="container-fluid" style="background-color:#02517C;">
        <div class="row mt-4">

            <div class="col-12 col-sm-4">
                <img style="width:150px;height:100px;" src="{{ asset('images/logo2.png') }}">
            </div>
            <div class="col-12 col-sm-4 d-flex justify-content-center mt-4">
                <div class="">
                    <span style="color:white;">Copyright ©2020 arohi.xyz All rights reserved.</span>
                </div>

            </div>
            @php
            $facebookid = "https://www.facebook.com/arohi.xyz/"
            @endphp
            <div class="col-12 col-sm-4 d-flex justify-content-end mt-4">
                <div>
                    <a href="<?php echo $facebookid ?>" target="_blank"><i class='fab fa-facebook-square' style='font-size:26px;color:white'></i></a>
                </div>
                <div class="ml-4">
                    <i class='fab fa-youtube' style='font-size:26px;color:white'></i>
                </div>
                <div class="ml-4">
                    <i class='fab fa-twitter' style='font-size:26px;color:white'></i>
                </div>
                <div class="ml-4">
                    <i class='fab fa-linkedin' style='font-size:26px;color:white'></i>
                </div>
            </div>

        </div>

    </div>
</section>

<script>
    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap4'
    });
    $('#datepicker2').datepicker({
        uiLibrary: 'bootstrap4'
    });

    function changeImage() {
        var x = document.getElementById("cover").style.backgroundImage;
        var res = x.match(/cover/g);
        var res1 = x.match(/atu/g);

        if (res == "cover") {
            document.getElementById("cover").style.backgroundImage = "url('../images/atu.jpg')";
        } else if (res1 == "atu") {
            document.getElementById("cover").style.backgroundImage = "url('../images/ee.jpg')";
        } else
            document.getElementById("cover").style.backgroundImage = "url('../images/cover.jpg')";


    }
    $(function() {
        var availableTags = [
            "DHAKA",
            "CHATTOGRAM",
            "COX'S BAZAR",
            "BANDARBAN",
            "CUMILLA",
            "SYLHET",
            "GAZIPUR",
            "KHAGRACHORI",
            "TANGAIL",
            "BOGURA",
            "BARISAL",
            "JASHORE",
            "NARAYANGANJ",
            "RANGAMATI",
            "SAJEK",
            "KUWAKATA",
            "RAJSHAHI",
            "KHULNA",
            "RANGPUR",
            "SREEMANGAL"
        ];
        $("#tags").autocomplete({
            source: availableTags
        });
    });
</script>

@endsection