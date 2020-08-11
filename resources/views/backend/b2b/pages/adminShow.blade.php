@extends('admin.layouts.master')
      @section('content')
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Reseller Information
                  </div>
                  <div class="card-body">

                      <table class="table table-dark">
                          <thead>
                              <tr>
                                  <th scope="col">Name</th>
                                  <th scope="col">Category</th>
                                  <th scope="col">Email</th>
                                  <th scope="col">Number</th>
                              </tr>
                          </thead>
                          <tbody>
                              @foreach($std as $value)
                              <tr>
                                  <th scope="row">{{$value['name']}}</th>
                                  <td>{{$value['category']}}</td>
                                  <td>{{$value['email']}}</td>
                                  <td>{{$value['number']}}</td>
                                  
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