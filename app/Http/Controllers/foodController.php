<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class foodController extends Controller
{
    public function index()
    {
        return view('frontend.pages.food');
    }
}
