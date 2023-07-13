<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ProductCategory;
use Illuminate\Http\Request;

class ProductCategoriesController extends Controller
{
    public function index()
    {
        $models = ProductCategory::where("IsActive", "=", true)->get();
        return view("Categories.index", ["models" => $models]);
    }
    public function edit($id)
    {
        $model = ProductCategory::find($id);
        return view("Categories.edit", ["model" => $model]);
    }
    public function update($id, Request $request)
    {
        $model = ProductCategory::find($id);
        $model->Name = $request->input("Name");
        $model->Notes = $request->input("Notes");
        $model->CreationDateTime = date("Y-m-d H:i:s");
        $model->EditDateTime = date("Y-m-d H:i:s");

        $model->save();
        return redirect("/categories");
    }
    public function delete($id)
    {
        $model = ProductCategory::find($id);
        $model->IsActive = false;
        $model->save();
        return redirect("/categories");
    }
    public function create()
    {
        $model = new ProductCategory();      
        return view("Categories.create", ["model" => $model]);
    }
    public function addToDB(Request $request)
    {
        $request->validate([
            'Name' => 'required|max:255',
            'Notes' => 'max:255',
        ]);
        $model = new ProductCategory();
        $model->Name = $request->input("Name");
        $model->Notes = $request->input("Notes");
        $model->CreationDateTime = date("Y-m-d H:i:s");
        $model->EditDateTime = date("Y-m-d H:i:s");
        $model->IsActive = true;
        
        $model->save();
        return redirect("/categories");
    }
}
