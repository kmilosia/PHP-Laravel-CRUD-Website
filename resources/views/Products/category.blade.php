@extends('main')
@section('menu')
    <a href="/products/create" class="btn text-light mx-2" style="background: #6671A3;">New product</a>
    <a href="/products" class="btn text-light mx-2" style="background: #6671A3;">All Products</a>
@endsection
@section('content')
    <div class="container p-2">
    @foreach($models as $model)
        <h1 class="text-center display-2 text-light mb-3">{{ $model->productCategories->Name }}</h1>
        @break
        @endforeach
       <div class="m-2 p-2 d-flex flex-wrap justify-content-center align-items-center">        
       @foreach($categories as $cat)
        <a href="/products/category/{{ $cat->Id }}" class="nav-product-link m-3" style="background:#6671A3;">{{ $cat->Name }}</a>
        @endforeach
       </div>
        <div class="row gy-3 my-3">
            @foreach($models as $model)
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card">
                <img class="img-fluid" style="height:40vh; object-fit:cover; border-radius:8px 8px 0px 0px;" src="{{ $model->ImageURL }}">
                    <div class="card-body">
                        <a href="{{ url()->current() }}/preview/{{ $model->Id }}" class="text-dark" style="text-decoration: none;"><p class="card-title h3">{{ $model->Name }}</p></a>                       
                        <p class="h6" style="font-weight: 400;margin:0.75rem 0rem;">{{ $model->Price }}&euro;</p>
                        <p style="font-weight: 200;margin:0;">{{ $model->productCategories->Name }}</p>                        
                        <div class="my-2">
                        <a href="/products/edit/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-pen-to-square"></i></a>
                        <a href="/products/delete/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-trash"></i></a>
                        <a href="/products/preview/{{ $model->Id }}" class="btn text-light" style="background:#E5C9BF;"><i class="fa-solid fa-eye"></i></a>
                    </div>
                    </div>
                </div>
            </div>      
            @endforeach
        </div>
    </div>

@endsection
