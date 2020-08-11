<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function user()
    {
        
        return $this->belongsTo(User::class);
    }
    
    public function hotel_details()
    {
        
        return $this->belongsTo('App\Hotel_details', 'id');
    }
    
    public function hotel()
    {
        
        return $this->belongsTo(Hotel::class);
    }
}
