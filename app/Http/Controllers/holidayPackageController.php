<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\holidayPackage;
use Image;

class holidayPackageController extends Controller
{
    public function index()
    {
        $holiday = holidayPackage::orderBy('id' , 'desc')->get();
        return view('frontend.pages.holidayPackage')->with('holiday' , $holiday);
    }
    
    public function holidayPackageDetails($id){
        
       //$std = Hotel_details::find($id);
        $std1 = holidayPackage::find($id);
        //$cat = Category::find($std->category_id);
        //$category = Category::orderBy('id' , 'desc')->get();
        return view('frontend.pages.holidayPackageDetails')->with('data' , $std1);
    }
    
    public function holidayPackageAdd(){
        
        return view('backend.admin.pages.holidayPackageAdd');
    }
    
    public function holidayPackageAddSubmit(Request $request){
        
        //validaton
        
        $validatedData = $request->validate([
        'package' => 'required|max:100',
        'description' => 'required',
        'country' => 'required',
        'price' => 'required|numeric',
        'city' => 'required'
            
    ]);
        
        
        
        
        $hotel = new holidayPackage();
        $hotel->package_name = $request->package;
        $hotel->country = $request->country;
        $hotel->city = $request->city;
        $hotel->total_day = $request->total_day;
        $hotel->valid_from = $request->valid_from;
        $hotel->valid_to = $request->valid_to;
        $hotel->person = $request->person;
        $hotel->description = $request->description;
        $hotel->tour_details = $request->tour_details;
        $hotel->included_services = $request->included_services;
        $hotel->Excluded_services = $request->excluded_services;
        $hotel->Acommodation = $request->acommodation;
        $hotel->image = $request->image;
        $hotel->price = $request->price;
        
        
        
        //hotel_image model for insert image
        
        if ($request->hasFile('image')) {
          //insert that image
          $image = $request->file('image');
          $img = $image->getClientOriginalName();
          $location = 'images/holiday_package/' .$img;
          Image::make($image)->save($location);
    
          $hotel->image = $img;
          $hotel->save();
        }
        
        
        session()->flash('success' ,'Holiday  Package has Added successfully!!');
        
        return redirect()->route('admin.holidayPackageAdd');
        
        
    }
    
    public function holidayPackageShow(){
        
        $holidayPackage = holidayPackage::orderBy('id' , 'desc')->get();
        
        
        return view('backend.admin.pages.holidayPackageList')->with('holidayPackage' , $holidayPackage);
        
    }
    
}
