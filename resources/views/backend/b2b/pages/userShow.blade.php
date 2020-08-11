@extends('backend.admin.layouts.master')
@section('content')
<div class="main-panel">
    <div class="content-wrapper">
        <div class="card">
            <div class="card-header">
                User Information
            </div>
            <div class="card-body">
                @if(Session::has('success'))
                <div class="alert alert-success">

                    <p>{{ Session::get('success') }}</p>
                </div>
                @endif

                <table style="table-layout: fixed;width: 100%;" class="table table-dark">
                    <thead>
                        <tr>
                           <th scope="col">No.</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>

                        </tr>
                    </thead>
                    <tbody>
                        @foreach($user as $user)
                        <tr>
                           <td>{{$user['id']}}</td>
                            <td>{{$user['name']}}</td>
                            <td>{{$user['email']}}</td>
                           


                        </tr>

                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>


    </div>
</div>
<!-- main-panel ends -->


@endsection