@extends('admin.layouts.master')
@section('content')

<div class="main-panel">
    <div class="content-wrapper">
        <div class="card">
            <div class="card-header">
            </div>
            <div class="card-body">
                <h3>Admin Profile</h3>
                <table border="0">
                    @foreach($std as $std)
                    <tr>
                        <td>category :</td>
                        <td>{{$std['category']}}</td>
                    </tr>
                    <tr>
                        <td>name :</td>
                        <td>{{$std['name']}}</td>
                    </tr>
                    <tr>
                        <td>email :</td>
                        <td>{{$std['email']}}</td>
                    </tr>
                    <tr>
                        <td>number :</td>
                        <td>{{$std['number']}}</td>
                    </tr>
                    
                    <tr>
                        <td>Username :</td>
                        <td>{{$std['username']}}</td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td>
                            {{$std['password']}}
                        </td>
                    </tr>
                     @endforeach
                </table>
                     
                     
                  </div>
              </div>


          </div>
      </div>
      <!-- main-panel ends -->


      @endsection