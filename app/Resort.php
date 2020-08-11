<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Resort extends Model
{
    public function resort_details(){
        
        return $this->hasMany('App\ResortDetails');
        
        
    }
}
