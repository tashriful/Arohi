<form class="form-inline" action="{{route('roomOrderButton')}}" method="post">
 @csrf
    
   <input type="hidden" name="room_id" value="{{ $data->id }}">
            <input type="hidden" name="hotel_id" value="{{ $data->hotel_id }}">
            <input type="hidden" name="price" value="{{ $data->price }}">   
             
  <button type="submit" value="submit" class="btn btn-primary btn-lg">Order</button>  
    
</form>



