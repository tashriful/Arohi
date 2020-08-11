<form class="form-inline" action="{{route('pickOrderButton')}}" method="post">
 @csrf
    
   <input type="hidden" name="location" value="{{ $data->location }}">
            <input type="hidden" name="from" value="{{ $data->from }}">
            <input type="hidden" name="to" value="{{ $data->to }}">
            <input type="hidden" name="price" value="{{ $data->price }}">   
             
  <button type="submit" value="submit" class="btn btn-primary btn-lg">Order</button>  
    
</form>



