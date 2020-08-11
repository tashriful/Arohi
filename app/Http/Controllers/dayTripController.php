<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Daytrip;
use Image;

class dayTripController extends Controller
{
    public function index()
    {
        $daytrip = Daytrip::orderBy('id' , 'desc')->get();
        return view('frontend.pages.dayTrip')->with('daytrip' , $daytrip);
    }
    
    public function daytripDetails($id){
        
       //$std = Hotel_details::find($id);
        $std1 = Daytrip::find($id);
        //$cat = Category::find($std->category_id);
        //$category = Category::orderBy('id' , 'desc')->get();
        return view('frontend.pages.daytripDetails')->with('data' , $std1);
    }
    
    public function dayTripAdd(){
        
        return view('backend.admin.pages.dayTripAdd');
    }
    
    public function dayTripAddSubmit(Request $request){
        
        //validaton
        
        $validatedData = $request->validate([
        'package' => 'required|max:100',
        'description' => 'required',
        'country' => 'required',
        'price' => 'required|numeric',
        'city' => 'required'
            
    ]);
        
        
        
        
        $hotel = new Daytrip();
        $hotel->package_name = $request->package;
        $hotel->country = $request->country;
        $hotel->city = $request->city;
        $hotel->person = $request->person;
        $hotel->description = $request->description;
        $hotel->image = $request->image;
        $hotel->price = $request->price;
        
        
        
        //hotel_image model for insert image
        
        if ($request->hasFile('image')) {
          //insert that image
          $image = $request->file('image');
          $img = $image->getClientOriginalName();
          $location = 'images/daytrips/' .$img;
          Image::make($image)->save($location);
    
          $hotel->image = $img;
          $hotel->save();
        }
        
        
        session()->flash('success' ,'daytrip has Added successfully!!');
        
        return redirect()->route('admin.dayTripAdd');
        
        
    }
    
    public function dayTripShow(){
        
        $daytrip = Daytrip::orderBy('id' , 'desc')->get();
        
        
        return view('backend.admin.pages.dayTripList')->with('daytrip' , $daytrip);
        
    }
}
