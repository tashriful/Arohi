<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotel_details extends Model
{
    public function hotel()
    {
        
        return $this->belongsTo(Hotel::class);
    }
}
