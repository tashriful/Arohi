@extends('admin.layouts.master')
      @section('content')
      
      <div class="main-panel">
          <div class="content-wrapper">
              <div class="card">
                  <div class="card-header">
                      Update Supplier
                  </div>
                  <div class="card-body">
                      <form action="" method="post" >
                        
                        @csrf
                        
                        <div class="form-group row">
                            <label for="Business Category" class="col-md-4 col-form-label text-md-right">{{ __('Business Category') }}</label>
                            <div class="col-md-6">
                                <select class="form-control" name="bcategory">

                                    <option value="{{$std['business_category']}}">"{{$std['business_category']}}"</option>
                                    

                                </select>
                            </div>


                        </div>

                        <div class="form-group row">
                            <label for="cname" class="col-md-4 col-form-label text-md-right">{{ __('Company Name') }}</label>

                            <div class="col-md-6">
                                <input id="cname" type="text" class="form-control @error('cname') is-invalid @enderror" name="cname" value="{{$std['company_name']}}" required autocomplete="cname" autofocus>

                                @error('cname')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        
                         <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{$std['name']}}" required autocomplete="name" autofocus>

                                @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{$std['email']}}" required autocomplete="email">

                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="number" class="col-md-4 col-form-label text-md-right">{{ __('Phone') }}</label>

                            <div class="col-md-6">
                                <input id="number" type="text" class="form-control @error('number') is-invalid @enderror" name="number" value="{{$std['number']}}" required autocomplete="number" autofocus>

                                @error('number')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        
                        
                        <div class="form-group row">
                            <label for="address" class="col-md-4 col-form-label text-md-right">{{ __('Address') }}</label>

                            <div class="col-md-6">
                                <input id="address" type="text" class="form-control @error('address') is-invalid @enderror" name="address" value="{{$std['address']}}" required autocomplete="address" autofocus>

                                @error('address')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                         
                         <div class="form-group row">
                            <label for="status" class="col-md-4 col-form-label text-md-right">{{ __('status') }}</label>
                            <div class="col-md-6">
                                <select class="form-control" name="status">

                                    <option value="1">Active</option>
                                    <option value="0">Deactive</option>
                                    


                                </select>
                            </div>


                        </div>
                         
                        

                        <div class="form-group row">
                            <label for="username" class="col-md-4 col-form-label text-md-right">{{ __('User Name') }}</label>

                            <div class="col-md-6">
                                <input id="username" type="text" class="form-control @error('username') is-invalid @enderror" name="username" value="{{$std['username']}}"  required autocomplete="username" autofocus>

                                @error('username')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>



                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" value="{{$std['password']}}" required autocomplete="new-password">

                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        
                
                          <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Update') }}
                                </button>
                            </div>
                        </div>
                      </form>

                  </div>
              </div>


          </div>
      </div>
      <!-- main-panel ends -->


      @endsection