<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Hotel;
use App\Hotel_details;
use Auth;
use App\Order;

class HotelController extends Controller
{
    
    
    public function index()
    {
        return view('frontend.pages.index');
    }
    
    
    public function hotelSearch(Request $request){
      
        $search = $request->location;
         $data = Hotel::where('location','LIKE','%'.$search.'%')->get();
        return view('frontend.pages.searchResult')->with('data' , $data);
    }
    
    public function hotelDetails($id){
        
       //$std = Hotel_details::find($id);
        $std1 = Hotel::find($id);
        //$cat = Category::find($std->category_id);
        //$category = Category::orderBy('id' , 'desc')->get();
        return view('frontend.pages.hotelDetails')->with('data1' , $std1);
    }
    
    public function roomOrderButton(Request $request)
    {
        
        //$order = new Order();
        
        $user = Auth::id();
        $hotel_id = $request->hotel_id;
        $room_id = $request->room_id;
        $price = $request->price;
        //$category = Category::orderBy('id' , 'desc')->get();
        //$order->quantity = 1;
        //$order->price = 1;
        //$order->name = "kamal";
        ////$order->number= 1;
       // $order->address = "kamal";
       // $order->save();
        
         //return back();
        return view('frontend.pages.orderForm' )->with('hotel_id' , $hotel_id)->with('room_id' , $room_id)->with('price' , $price)->with('user' , $user);
    }
    
    public function userOrderSubmit(Request $request)
    {
        
        $order = new Order();
        
        $order->user_id = $request->user_id;
         $order->hotel_id = $request->hotel_id;
         $order->room_id = $request->hotel_id;
        $order->total_room = $request->total_room;
        $order->check_in = $request->checkin;
        $order->check_out = $request->checkout;
        $order->votar_id = $request->votar_id;
        $order->price = $request->price;
        $order->name = $request->name;
        $order->number= $request->number;
        $order->address = $request->address;
        $order->save();
         
        //$category = Category::orderBy('id' , 'desc')->get();
         session()->flash('success' ,'Order has Placed successfully ');
         
         return redirect()->route('homepage');
    }
}
