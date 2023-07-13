<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function index()
    {
        $models = Product::where("IsActive", "=", true)->orderBy('CreationDateTime', 'desc')->take(9)->get();
        $categories = ProductCategory::where('IsActive', true)->get();   
        return view("Products.index", ["models" => $models, "categories" => $categories]);
    }
    public function category($idCategory)
    {
        $models = Product::where("IsActive", "=", true)->where("IdCategory", $idCategory)->get();
        $categories = ProductCategory::where('IsActive', true)->get();   
        return view("Products.category", ["models" => $models, "categories" => $categories]);
    }
    public function edit($id)
    {
        $model = Product::find($id);
        $categories = ProductCategory::where('IsActive', true)->get();   
        return view("Products.edit", compact('model', 'categories'));
    }
    public function update($id, Request $request)
    {
        $request->validate([
            'Name' => 'required',
            'Price' => 'required|numeric|gt:0',
            'Code' => 'required|digits_between:1,10',
            'ImageURL' => 'required',
            'Description' => 'required|max:65535',
            'ContentHTML' => 'required|max:65535',
        ]);
        $model = Product::find($id);
        $model->Name = $request->input("Name");
        $model->Code = $request->input("Code");
        $model->Price = $request->input("Price");
        $model->ImageURL = $request->input("ImageURL");
        $model->ContentHTML = $request->input("ContentHTML");
        $model->Description = $request->input("Description");
        $model->EditDateTime = date("Y-m-d H:i:s");
        $model->IdCategory = $request->input("IdCategory");

        $model->save();
        return redirect("/products");
    }
    public function delete($id)
    {
        $model = Product::find($id);
        $model->IsActive = false;
        $model->save();
        return redirect("/products");
    }
    public function create()
    {
        $model = new Product();
        $categories = ProductCategory::where('IsActive', true)->get();   
        return view("Products.create", compact('model', 'categories'));
    }
    public function addToDB(Request $request)
    {
        $request->validate([
            'Name' => 'required',
            'Price' => 'required|numeric|gt:0',
            'Code' => 'required|digits_between:1,10',
            'ImageURL' => 'required',
            'Description' => 'required|max:65535',
            'ContentHTML' => 'required|max:65535',
        ]);
        $model = new Product();
        $model->Name = $request->input("Name");
        $model->Code = $request->input("Code");
        $model->Price = $request->input("Price");
        $model->ImageURL = $request->input("ImageURL");
        $model->ContentHTML = $request->input("ContentHTML");
        $model->Description = $request->input("Description");
        $model->CreationDateTime = date("Y-m-d H:i:s");
        $model->EditDateTime = date("Y-m-d H:i:s");
        $model->IdCategory = $request->input("IdCategory");
        $model->IsActive = true;
        
        $model->save();
        return redirect("/products");
    }
    public function preview($id)
    {
        $model = Product::find($id);
        return view("Products.preview", ["model" => $model]);
    } 
}
