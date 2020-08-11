<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ResortDetails extends Model
{
    public function resort()
    {
        
        return $this->belongsTo(Resort::class);
    }
}
