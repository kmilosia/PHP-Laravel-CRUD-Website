<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view("Home.index");
    }
    public function search(Request $request)
    {
        $searchTerm = $request->input("searchTerm");
        $products = Product::where("Name", "LIKE", "%{$searchTerm}%")->where("IsActive", true)->get();
        return view("Home.search", compact("products"));
    }
}
