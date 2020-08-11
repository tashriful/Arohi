<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Resort;
use App\ResortDetails;
use Image;

class resortController extends Controller
{
    public function resortAdd(){
        
        return view('backend.admin.pages.resortAdd');
    }
    
    public function resortAddSubmit(Request $request){
        
        //validaton
        
        $validatedData = $request->validate([
        'title' => 'required|max:100',
        'description' => 'required',
        'star' => 'required|numeric',
        'price' => 'required|numeric',
            
    ]);
        
        
        
        
        $hotel = new Resort();
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
          $location = 'images/resorts/' .$img;
          Image::make($image)->save($location);
    
          $hotel->image = $img;
          $hotel->save();
        }
        
        
        session()->flash('success' ,'resort has Added successfully!!');
        
        return redirect()->route('admin.resortAdd');
        
        
    }
    
    public function resortPackageAdd(){
        
        $resort = Resort::orderBy('id' , 'desc')->get();
        
        
        return view('backend.admin.pages.resortPackageAdd')->with('resort' , $resort);
        
    }
    
    public function resortPackageAddSubmit(Request $request){
        
        //validaton
        
        $validatedData = $request->validate([
        'resort_id' => 'required',
        'description' => 'required',
        'person' => 'required|numeric',
        'price' => 'required|numeric',
            
    ]);
        
        
        
        
        $hotel = new ResortDetails();
        $hotel->resort_id = $request->resort_id;
        $hotel->package_category = $request->package_category;
        $hotel->person = $request->person;
        $hotel->description = $request->description;
        $hotel->price = $request->price;
        
        
        
        //hotel_image model for insert image
        
        if ($request->hasFile('image')) {
          //insert that image
          $image = $request->file('image');
          $img = $image->getClientOriginalName();
          $location = 'images/resort_packages/' .$img;
          Image::make($image)->save($location);
    
          $hotel->image = $img;
          $hotel->save();
        }
        
        
        session()->flash('success' ,'Resort Packages has Added successfully!!');
        
        return redirect()->route('admin.resortPackageAdd');
}
    
    public function resortList(){
        
        $resort = ResortDetails::orderBy('id' , 'desc')->get();
        
        
        return view('backend.admin.pages.resortList')->with('resort' , $resort);
    }
}
