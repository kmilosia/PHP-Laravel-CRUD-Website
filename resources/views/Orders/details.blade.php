@extends('main')
@section('menu')
    <a href="/orders/create" class="btn text-light mx-2" style="background: #6671A3;">New Order</a>
    <a href="/orders" class="btn text-light mx-2" style="background: #6671A3;">All Orders</a>
@endsection
@section('content')

 <div class="container mt-5 bg-light p-4" style="border-radius: 8px;">
        <h6>Order ID: {{ $model->Id }}</h6>
        <div class="row">
            <div class="col-sm-12 my-2">
                <h2>{{ $model->Customer->Name }} {{ $model->Customer->Surname }}</h2>
                <h6 class="my-4">Order Date: {{ date('d.m.Y H:i', strtotime($model->OrderDateTime)) }}</h6>
                <div class="products my-3">
                @foreach($products as $key => $item)
                    <div class="py-3 px-2 my-3 items-center d-flex" style="border-radius: 8px; box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;">
                    <img src="{{ $item->product->ImageURL }}" class="mx-1" style="width: 10rem; height: 10rem; object-fit:contain;"/>
                    <div class="bg-light mx-2 p-3" style="display: inline-block;">
                        <h4 class="p-1">{{ $item->product->Name }}</h4>
                        <h5 class="p-1">{{ $item->product->Price }}&euro;</h5>
                        <h6 class="p-1">Quantity: {{ $item->Quantity }}</h6>
                    </div>    
                    </div>
          
                @endforeach
            </div>
            <h6 style="font-weight: 500;">Notes: {{ $model->Notes }}</h6>
            <h3 class="my-4">Total: {{ $model->Total }}&euro;</h3>
                <div class="my-2">
                        <a href="/orders/edit/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-pen-to-square"></i></a>
                        <a href="/orders/delete/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-trash"></i></a>
                        <a href="/orders" class="btn text-light" style="background:#E5C9BF;"><i class="fa-solid fa-arrow-left"></i></a>
                </div>
            </div>
            
        </div>
    </div>

@endsection