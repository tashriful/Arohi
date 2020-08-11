<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class b2bSignupController extends Controller
{
    public function SignUpForm()
    {
        
        return view('auth.b2bRegister');
    }
    
    public function signUpFormSubmit(Request $request){
        
        //validaton
        
        $validatedData = $request->validate([
        'cname' => 'required|max:100',
        'name' => 'required',
        'username' => 'required',
        'password' => 'required',
            
    ]);
        
        
        
        
        $hotel = new b2b();
        $hotel->company_name = $request->cname;
        $hotel->b2b_category = $request->category;
        $hotel->name = $request->name;
        $hotel->email = $request->email;
        $hotel->number = $request->number;
        $hotel->address = $request->address;
        $hotel->username = $request->username;
        $hotel->password = Hash::make($request->password);
        
        
        
        
          $hotel->save();
        
        
        
        session()->flash('success' ,'You have registered successfully!!');
        return redirect()->route('b2b.signup');
        
        
    }
}
