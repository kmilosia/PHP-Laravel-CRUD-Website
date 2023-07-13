@extends('main')
@section('menu')
    <a href="/customers/create" class="btn text-light mx-2" style="background: #6671A3;">New Customer</a>
    <a href="/customers" class="btn text-light mx-2" style="background: #6671A3;">All Customers</a>
@endsection
@section('content')
    <div class="container">
        <div class="row gy-3">
            @foreach($models as $model)
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card">
                <img class="img-fluid" style="height:40vh; object-fit:cover; border-radius:8px 8px 0px 0px;" src="{{ $model->AvatarURL }}">
                    <div class="card-body">
                    <a href="{{ url()->current() }}/preview/{{ $model->Id }}" class="text-dark my-3" style="text-decoration: none;"><p class="card-title h3">{{ $model->Name }} {{ $model->Surname }}</p></a>                                              
                    <p>Customer ID: {{ $model->Id }}</p>   
                    <div class="my-3">
                        <a href="{{ url()->current() }}/edit/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-pen-to-square"></i></a>
                        <a href="{{ url()->current() }}/delete/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-trash"></i></a>
                        <a href="{{ url()->current() }}/preview/{{ $model->Id }}" class="btn text-light" style="background:#E5C9BF;"><i class="fa-solid fa-eye"></i></a>
                    </div>
                    </div>
                </div>
            </div>      
            @endforeach
        </div>
    </div>
@endsection
