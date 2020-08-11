<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Air;

class airController extends Controller
{
    public function index()
    {
        return view('frontend.pages.air');
    }
    
    public function airSearch(Request $request){
      
        $returns = $request->returns;
        $one_way = $request->one_way;
        $flying_from = $request->flying_form;
        $flying_to = $request->flying_to;
        $date = $request->dates;
        $person = $request->person;
        
        //dump($returns);
        //dump($flying_form);
        //dump($flying_to);
        //dump($date);
        //dump($person);
        
        
        $data = Air::where('flying_from','LIKE','%'.$flying_from.'%')
                       ->where('flying_to','LIKE','%'.$flying_to.'%')
                       ->get();
        
        
         //$data = Air::where('location','LIKE','%'.$search.'%')->get();
        return view('frontend.pages.searchAirResult')->with('data' , $data);
    }
}
