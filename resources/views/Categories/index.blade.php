@extends('main')
@section('menu')
    <a href="/categories/create" class="btn text-light mx-2" style="background: #6671A3;">New Product Category</a>
    <a href="/categories" class="btn text-light mx-2" style="background: #6671A3;">All Categories</a>
@endsection
@section('content')
    <div class="container">
        <div class="row gy-3">
            <ul class="bg-light p-4" style="border-radius:4px;">
            @foreach($models as $model)
            <li class="d-flex justify-content-between border-bottom m-2 p-2">
            <p class="card-title h3">{{ $model->Name }}</p>
                        <div class="my-2">
                        <a href="{{ url()->current() }}/edit/{{ $model->Id }}" class="btn text-light mx-2" style="background:#6671A3;"><i class="fa-solid fa-pen-to-square"></i></a>
                        <a href="{{ url()->current() }}/delete/{{ $model->Id }}" class="btn text-light mx-2" style="background:#E5C9BF;"><i class="fa-solid fa-trash"></i></a>
                    </div>
            </li>
            @endforeach
            </ul>          
        </div>
    </div>

@endsection
