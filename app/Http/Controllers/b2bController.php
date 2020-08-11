<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\B2b;
use Illuminate\Support\Facades\Hash;

class b2bController extends Controller
{
    public function __construct(){
        
        $this->middleware('auth:b2b');
    }
    
    public function index(){
        
        return view('backend.b2b.pages.index');
    }
    
    
    
    public function hotelAdd(){
        
        return view('backend.b2b.pages.hotelAdd');
    }
    
    public function hotelAddSubmit(Request $request){
        
        //validaton
        
        $validatedData = $request->validate([
        'title' => 'required|max:100',
        'description' => 'required',
        'star' => 'required|numeric',
        'price' => 'required|numeric',
            
    ]);
        
        
        
        
        $hotel = new Hotel();
        $hotel->title = $request->title;
        $hotel->location = $request->location;
        $hotel->address = $request->address;
        $hotel->description = $request->description;
        $hotel->star = $request->star;
        $hotel->price_range = $request->price;
        
        
        
        //hotel_image model for insert image
        
        if ($request->hasFile('image')) {
          //insert that image
          $image = $request->file('image');
          $img = $image->getClientOriginalName();
          $location = public_path('images/Hotels/' .$img);
          Image::make($image)->save($location);
    
          $hotel->image = $img;
          $hotel->save();
        }
        
        
        session()->flash('success' ,'hotel has Added successfully!!');
        
        return redirect()->route('b2b.hotelAdd');
        
        
    }
    
    public function hotelRoom(){
        
        $hotel = Hotel::orderBy('id' , 'desc')->get();
        
        
        return view('backend.admin.b2b.hotelRoom')->with('hotel' , $hotel);
        
    }
    
    public function hotelRoomSubmit(Request $request){
        
        //validaton
        
        $validatedData = $request->validate([
        'hotel_id' => 'required',
        'description' => 'required',
        'person' => 'required|numeric',
        'price' => 'required|numeric',
            
    ]);
        
        
        
        
        $hotel = new Hotel_details();
        $hotel->hotel_id = $request->hotel_id;
        $hotel->room_category = $request->room_category;
        $hotel->person = $request->person;
        $hotel->description = $request->description;
        $hotel->price = $request->price;
        
        
        
        //hotel_image model for insert image
        
        if ($request->hasFile('image')) {
          //insert that image
          $image = $request->file('image');
          $img = $image->getClientOriginalName();
          $location = public_path('images/hotel_rooms/' .$img);
          Image::make($image)->save($location);
    
          $hotel->image = $img;
          $hotel->save();
        }
        
        
        session()->flash('success' ,'hotel has Added successfully!!');
        
        return redirect()->route('b2b.hotelRoom');
        
        
    }
    
    public function hotelRoomUpdate(Request $request , $id){
        
        //validaton
        
        $validatedData = $request->validate([
        'hotel_id' => 'required',
        'description' => 'required',
        'person' => 'required|numeric',
        'price' => 'required|numeric',
            
    ]);
        
        
        
        //dump($request->room_category);
        $hotel = Hotel_details::find($id);
        dump($hotel);
        $hotel->hotel_id = $request->hotel_id;
        $hotel->room_category = $request->room_category;
        $hotel->person = $request->person;
        $hotel->description = $request->description;
        $hotel->price = $request->price;
        
        
        
        //hotel_image model for insert image
        
        if ($request->hasFile('image')) {
          //insert that image
          $image = $request->file('image');
          $img = $image->getClientOriginalName();
          $location = public_path('images/hotel_rooms/' .$img);
          Image::make($image)->save($location);
    
          $hotel->image = $img;
          
        }
        $hotel->save();
        
        session()->flash('success' ,'hotel has Updated successfully!!');
        
        return redirect()->route('admin.hotelList');
        
        
    }
    
    public function hotelRoomDelete($id){
        
       $std = Hotel_details::find($id);
        $std->delete();
        session()->flash('success' ,'Hotel Room Has deleted successfully ');
        
		 return back();
    }
    
    public function hotelList(){
        
        $hotel = Hotel_details::orderBy('id' , 'desc')->get();
        
        
        return view('backend.admin.pages.hotelList')->with('hotel' , $hotel);
    }
    public function hotelRoomEdit($id){
        
       $std = Hotel_details::find($id);
        //$cat = Category::find($std->category_id);
        //$category = Category::orderBy('id' , 'desc')->get();
        return view('backend.admin.pages.hotelRoomEdit')->with('hotel' , $std);//->with('category' , $category);
    }
    public function hotelsList(){
        
        $hotel = Hotel::orderBy('id' , 'desc')->get();
        
        
        return view('backend.admin.pages.hotels')->with('hotel' , $hotel);
    }
    
    public function hotelEdit($id){
        
       $std = Hotel::find($id);
        //$cat = Category::find($std->category_id);
        //$category = Category::orderBy('id' , 'desc')->get();
        return view('backend.admin.pages.hotelEdit')->with('hotel' , $std);//->with('category' , $category);
    }
    public function hotelUpdate(Request $request , $id){
        
        //validaton
        
        $validatedData = $request->validate([
        'title' => 'required|max:100',
        'description' => 'required',
        'star' => 'required|numeric',
        'price' => 'required|numeric',
            
    ]);
        
        
        
        
        $hotel = Hotel::find($id);
        $hotel->title = $request->title;
        $hotel->location = $request->location;
        $hotel->address = $request->address;
        $hotel->description = $request->description;
        $hotel->star = $request->star;
        $hotel->price_range = $request->price;
        
        
        
        //hotel_image model for insert image
        
          //insert that image
        if ($request->hasFile('image')) {
          $image = $request->file('image');
          $img = $image->getClientOriginalName();
          $location = public_path('images/Hotels/' .$img);
          Image::make($image)->save($location);
    
          $hotel->image = $img;
        }
          $hotel->save();
        
        
        
        session()->flash('success' ,'hotel has Updated successfully!!');
        
        return redirect()->route('admin.hotelsList');
        
        
    }
    public function hotelDelete($id){
        
       $std = Hotel::find($id);
        $std->delete();
        session()->flash('success' ,'Hotel Has deleted successfully ');
        
		 return back();
    }
    
    
     public function userShow(){
        
        $user = User::all();
    	return view('backend.admin.pages.userShow', ['user'=> $user]);
    }
    
    public function order(){
        
        $stdList = Order::all();
    	return view('backend.admin.pages.order', ['order'=> $stdList]);
    }
}
