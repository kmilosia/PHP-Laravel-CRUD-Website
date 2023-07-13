<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\Request;

class CustomersController extends Controller
{
    public function index()
    {
        $models = Customer::where("IsActive", "=", true)->get();
        return view("Customers.index", ["models" => $models]);
    }
    public function edit($id)
    {
        $model = Customer::find($id);
        return view("Customers.edit", ["model" => $model]);
    }
    public function update($id, Request $request)
    {
        $request->validate([
            'Name' => 'required|max:255',
            'Surname' => 'required|max:255',
            'Address' => 'max:255',
            'Phone' => 'digits_between:1,20|nullable|numeric',
            'Email' => 'max:255|email|nullable',
            'Notes' => 'max:255',
            'AvatarURL' => 'max:255',
        ]);
        $model = Customer::find($id);
        $model->Name = $request->input("Name");
        $model->Surname = $request->input("Surname");
        $model->Email = $request->input("Email");
        $model->Address = $request->input("Address");
        $model->Phone = $request->input("Phone");
        $model->Notes = $request->input("Notes");
        $model->AvatarURL = $request->input("AvatarURL");
        $model->CreationDateTime = date("Y-m-d H:i:s");
        $model->EditDateTime = date("Y-m-d H:i:s");

        $model->save();
        return redirect("/customers");
    }
    public function delete($id)
    {
        $model = Customer::find($id);
        $model->IsActive = false;
        $model->save();
        return redirect("/customers");
    }
    public function create()
    {
        $model = new Customer();
        return view("Customers.create", ["model" => $model]);
    }
    public function addToDB(Request $request)
    {
        $request->validate([
            'Name' => 'required|max:255',
            'Surname' => 'required|max:255',
            'Address' => 'max:255',
            'Phone' => 'digits_between:1,20|nullable|numeric',
            'Email' => 'max:255|email|nullable',
            'Notes' => 'max:255',
            'AvatarURL' => 'max:255',
        ]);
        $model = new Customer();
        $model->Name = $request->input("Name");
        $model->Surname = $request->input("Surname");
        $model->Email = $request->input("Email");
        $model->Address = $request->input("Address");
        $model->Phone = $request->input("Phone");
        $model->Notes = $request->input("Notes");
        $model->AvatarURL = $request->input("AvatarURL");
        $model->CreationDateTime = date("Y-m-d H:i:s");
        $model->EditDateTime = date("Y-m-d H:i:s");
        $model->IsActive = true;
        
        $model->save();
        return redirect("/customers");
    }
    public function preview($id)
    {
        $model = Customer::find($id);
        return view("Customers.preview", ["model" => $model]);
    }
}
