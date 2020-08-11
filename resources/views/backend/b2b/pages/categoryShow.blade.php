@extends('admin.layouts.master')
      @section('content')
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Category Information
                  </div>
                  <div class="card-body">

                      <table class="table table-dark">
                          <thead>
                              <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Category Name</th>
                              </tr>
                          </thead>
                          <tbody>
                              @foreach($categories as $value)
                              <tr>
                                  <th scope="row">#</th>
                                  <td>{{$value['name']}}</td>
                                  
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