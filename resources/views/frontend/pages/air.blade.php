@extends('frontend.layouts.master')
@section('content')
@extends('frontend.layouts.success')
   <section id="cover" onclick = "changeImage()" style="background-image: url('../images/cover.jpg');" class="bgimage">
    <div class="container h-100">
        <div class="row h-100 justify-content-center align-items-center">
            <form action="{{  route('airSearch')}}" method="post">
                @csrf


                <div class="form-row">
                    <div class="form-check col-md-5">
                        <input style="transform: scale(1.5);margin-left:2%;" class="form-check-input" type="radio" name="returns" id="exampleRadios1" value="option1" checked>
                        <label style="margin-left:10%;margin-bottom:10%;" class="form-check-label" for="exampleRadios1">
                        <h4 style="color:white;">Return</h4>
                        </label>
                    </div>
                    <div style="margin-left:8%;" class="form-check col-md-5">
                        <input style="transform: scale(1.5);" class="form-check-input" type="radio" name="one_way" id="exampleRadios2" value="option2">
                        <label class="form-check-label" for="exampleRadios2">
                            <h4 style="color:white;">One Way</h4>
                        </label>
                    </div>
                    </div>

                <div class="form-row">
                    <div style="margin-right:2%;" class="form-group col-md-1">
                        <i class="fa fa-plane fa-4x text-light"></i>
                    </div>
                    <div class="form-group col-md-5">
                        <input type="search" name="flying_form" class="form-control" id="formGroupExampleInput" placeholder="Flying From">
                    </div>
                    <div class="form-group col-md-5">
                        <input type="search" name="flying_to" class="form-control" id="formGroupExampleInput" placeholder="Flying To">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <input id="datepicker" name="dates" placeholder="Select Date" width="276" />
                    </div>
                    <div class="form-group col-md-6">
                        <input type="number" name="person" class="form-control" placeholder="Person">
                    </div>


                    
                </div>



                <div class="form-row">
                    
                    
                    <div class="form-group col-md-12">
                        <select class="form-control" name="category" id="exampleFormControlSelect">
                            <option value="economy">Economy</option>
                            <option value="business">Business</option>
                            <option value="first">First</option>
                        </select>
                    </div>
                <button type="submit" class="btn btn-danger">Search</button>

                </div>
            
            </form>
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

        if (res == "cover") 
        {
            document.getElementById("cover").style.backgroundImage = "url('../images/atu.jpg')";
        }
           else if (res1 == "atu"){
            document.getElementById("cover").style.backgroundImage = "url('../images/ee.jpg')";
        }
        else
            document.getElementById("cover").style.backgroundImage = "url('../images/cover.jpg')";
            
        
    }
    
    
    
</script>

@endsection