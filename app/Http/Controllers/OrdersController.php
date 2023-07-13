<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Discount;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class OrdersController extends Controller
{
    public function index()
    {
        $models = Order::where("IsActive", "=", true)->orderByDesc("CreationDateTime")->get();
        return view("Orders.index", ["models" => $models]);
    }
    public function create()
    {
        $model = new Order();
        $customers = Customer::where('IsActive', true)->get();   
        $products = Product::select('Id','Name', 'Price')->where('IsActive', true)->orderBy('Name','asc')->get();
        $model->formatDate = date("Y-m-d H:i:s");
        return view(
            "Orders.create",
            ["model" => $model, "customers" => $customers, "products" => $products]
        );
    }
    public function addToDB(Request $request)
    {
        $request->validate([
            'Total' => 'required|numeric|min:0.01|regex:/^\d+(\.\d{1,2})?$/',
            'OrderDateTime' => 'required',
            'Notes' => 'max:255',
        ]);

        $order = new Order();
        $order->CreationDateTime = Carbon::now();
        $order->EditDateTime = Carbon::now();
        $order->IdCustomer = $request["IdCustomer"];
        $order->OrderDateTime = $request["OrderDateTime"];
        $order->Total = $request["Total"];
        $order->Notes = $request["Notes"];
        $order->IsActive = true;
        $order->save();

        $id = $order->Id;
        $products = $request['products'];
        $quantity = $request['quantity'];
        $orderDetails = [];

        for ($i = 0; $i < count($products); $i++) {
            $orderDetails[] = array($products[$i], $quantity[$i]);
        }

        foreach ($orderDetails as $index => $detail)
        {
            if ($detail[1] > 0)
            {
                $orderD = new OrderDetail();
                $orderD->IdPurchase = $id;
                $orderD->IdProduct = $detail[0];
                $orderD->Quantity = $detail[1];
                $orderD->CreationDateTime = Carbon::now();
                $orderD->EditDateTime = Carbon::now();
                $orderD->isActive = true;
                $orderD->save();
            }
        }
        return redirect("/orders");
    }
    public function edit($id)
    {
        $model = Order::findOrFail($id);
        $customer = Customer::findOrFail($model->IdCustomer);
        $orderDetails = OrderDetail::where('IdPurchase',$id)->get();
        return view("Orders.edit", ["model" => $model, "customer" => $customer, "products" => $orderDetails]);
    }
    public function update($id, Request $request)
    {
        $request->validate([
            'Total' => 'required|numeric|min:0|regex:/^\d+(\.\d{1,2})?$/',
            'Notes' => 'max:255',
        ]);
        $model = Order::find($id);
        $model->Notes = $request->input("Notes");
        $model->Total = $request->input("Total");
        $model->EditDateTime = Carbon::now();
        $model->save();

        $products_id = $request["ProductsId"];
        foreach($products_id as $key =>$product) {
            $update_list = array(
                'Quantity' => $request->quantity [$key],
            );
            OrderDetail::where('id','=', $product)->update($update_list);
        }
        return redirect("/orders");
    }
    public function delete($id)
    {
        $model = Order::find($id);
        $model->IsActive = false;
        $model->save();
        return redirect("/orders");
    }
    public function details($id)
    {
        $model = Order::find($id);
        $orderDetails = OrderDetail::where('IdPurchase',$id)->get();
        return view("Orders.details", ["model" => $model, "products" => $orderDetails]);
    }
}
