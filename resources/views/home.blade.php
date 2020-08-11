@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <center><h1 style="color:red;" >You are Sucessfully Regestered!<br></h1>
                    <a href="{{ route('homepage')}}">
               <button type="button" class="btn btn-primary">Go to Home Page</button>
                        </a></center>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
