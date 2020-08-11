<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    public function hotel_details(){
        
        return $this->hasMany('App\Hotel_details');
        
        
    }
}
