@extends('admin.layouts.master')
@section('content')

<div class="main-panel">
    <div class="content-wrapper">
        <div class="card">
            <div class="card-header">
                Add Product
            </div>
            <div class="card-body">

                @include('admin.layouts.validationError')

                <form action="" method="post" enctype="multipart/form-data">

                    @csrf

                    


                    <div class="form-group">
                        <label for="exampleInputTitle">Product Title</label>
                        <input type="text" class="form-control" name="title" placeholder="Product Title">
                    </div>


                    <div class="form-group">
                        <label for="category">Product Category:</label>
                        <select class="form-control" name="category">
                            @foreach($categorys as $categorys)
                            <option value="{{ $categorys['id'] }}">{{ $categorys['name'] }}</option>
                            @endforeach

                        </select>
                    </div>

                    <div class="form-group">
                        <label for="category">User Type:</label>
                        <select class="form-control" name="utype">

                            <option value="Admin">Admin</option>

                        </select>
                    </div>


                    <div class="form-group">
                        <label for="exampleInputDescription">Product Description</label>
                        <textarea class="form-control" name="description" rows="8" cols="70" placeholder="Enter Description"></textarea>

                    </div>

                    <div class="form-group">
                        <label for="quantity">Quantity</label>
                        <input type="number" class="form-control" name="quantity" placeholder="Enter Quantity">

                    </div>

                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="number" class="form-control" name="price" placeholder="Enter Price">

                    </div>
                    <div class="form-group">
                        <label for="product_image">Image</label>
                        <input type="file" class="form-control" name="image" placeholder="Enter Image">
                    </div>

                    <button type="submit" name="submit" value="submit" class="btn btn-primary">Submit</button>
                </form>

            </div>
        </div>


    </div>
</div>
<!-- main-panel ends -->


@endsection