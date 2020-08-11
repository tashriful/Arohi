<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pick_Drop;
use App\PickDropOrder;
use Auth;

class pickController extends Controller
{
   public function index()
    {
        return view('frontend.pages.pick');
    }
    
    public function pickdropSearch(Request $request){
      
        $search = $request->location;
         $data = Pick_Drop::where('location','LIKE','%'.$search.'%')->get();
        return view('frontend.pages.searchpickResult')->with('data' , $data);
    }
    
    public function pickdropAdd(){
        
        return view('backend.admin.pages.pickdropAdd');
    }
    
    public function pickdropAddSubmit(Request $request){
        
        //validaton
        
        $validatedData = $request->validate([
        'location' => 'required',
        'description' => 'required',
        'person' => 'required|numeric',
        'price' => 'required|numeric',
        'from' => 'required',
        'to' => 'required'
            
    ]);
        
        
        
        
        $pick = new Pick_drop();
        $pick->location = $request->location;
        $pick->from = $request->from;
        $pick->to = $request->to;
        $pick->person = $request->person;
        $pick->description = $request->description;
        $pick->price = $request->price;
        $pick->save();
        
        
        
        session()->flash('success' ,'Pick and Drop has Added successfully!!');
        
        return redirect()->route('admin.pickdropAdd');
        
        
    }
    
    public function pickdropList(){
        
        $pick = Pick_Drop::orderBy('id' , 'desc')->get();
        
        
        return view('backend.admin.pages.pickdropList')->with('pick' , $pick);
    }
    
    public function pickOrderButton(Request $request)
    {
        
        //$order = new Order();
        
        $user = Auth::id();
        $from = $request->from;
        $to = $request->to;
        $location = $request->location;
        $price = $request->price;
        //$category = Category::orderBy('id' , 'desc')->get();
        //$order->quantity = 1;
        //$order->price = 1;
        //$order->name = "kamal";
        ////$order->number= 1;
       // $order->address = "kamal";
       // $order->save();
        
         //return back();
        return view('frontend.pages.pickOrderForm' )->with('from' , $from)->with('to' , $to)->with('price' , $price)->with('user' , $user)->with('location' , $location);
    }
    
    public function pickOrderSubmit(Request $request)
    {
        
        $order = new PickDropOrder();
        
        $order->user_id = $request->user_id;
         $order->location = $request->location;
         $order->from = $request->from;
        $order->to = $request->to;
        $order->total_car = $request->total_car;
        $order->booking_date = $request->booking_date;
        $order->votar_id = $request->votar_id;
        $order->price = $request->price;
        $order->name = $request->name;
        $order->number= $request->number;
        $order->address = $request->address;
        $order->save();
         
        //$category = Category::orderBy('id' , 'desc')->get();
         session()->flash('success' ,'Order has Placed successfully ');
         
         return redirect()->route('pick');
    }
    

}
