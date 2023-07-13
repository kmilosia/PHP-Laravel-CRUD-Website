@extends('main')
@section('menu')
    <a href="/products/create" class="btn text-light mx-2" style="background: #6671A3;">New product</a>
    <a href="/products" class="btn text-light mx-2" style="background: #6671A3;">All Products</a>
@endsection
@section('content')
<div class="container mt-5 bg-light p-4" style="border-radius: 8px;">
        <div class="row">
            <div class="col-md-6">
                <img src="{{ $model->ImageURL }}" alt="Product Image" class="img-fluid" style="border-radius: 8px;">
            </div>
            <div class="col-md-6 mt-3">
                <h1 class="my-4">{{ $model->Name }}</h1>
                <h4 class="my-4">{{ $model->Price }}&euro;</h4>
                <h5 class="my-4" style="font-weight:200;margin-right: 3rem;">{{ $model->Description }}</h5>
                <button class="btn text-light my-4 p-3" style="background:#6671A3;">Add to basket</button>
                <p style="font-weight: 200;">Product code: {{ $model->Code }}</p>
                <div class="my-2">
                        <a href="/products/edit/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-pen-to-square"></i></a>
                        <a href="/products/delete/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-trash"></i></a>
                        <a href="/products" class="btn text-light" style="background:#E5C9BF;"><i class="fa-solid fa-arrow-left"></i></a>
                </div>
            </div>
            <div class="col-sm-12 my-4 py-2 px-4">
                {!! $model->ContentHTML !!}
            </div>
        </div>
    </div>

@endsection