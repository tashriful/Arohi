<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Hotel;
use App\Hotel_details;
use Auth;
use App\Order;

class cityController extends Controller
{
    public function cityDetails($city){
        
       //$std = Hotel_details::find($id);
         //$std1 = Hotel::where('Location','LIKE','%'.$city.'%')->get();
        //$cat = Category::find($std->category_id);
        //$category = Category::orderBy('id' , 'desc')->get();
       $data = Hotel::where('location','LIKE','%'.$city.'%')->get();
        return view('frontend.pages.cityDetails')->with('data' , $data)->with('city' , $city);
    }
}
