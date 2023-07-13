@extends('main')
@section('menu')
    <a href="/customers/create" class="btn text-light mx-2" style="background: #6671A3;">New Customer</a>
    <a href="/customers" class="btn text-light mx-2" style="background: #6671A3;">All Customers</a>
@endsection
@section('content')
<div class="container mt-5 bg-light p-4" style="border-radius: 8px;">
        <div class="row">
            <div class="col-md-6">
                <img src="{{ $model->AvatarURL }}" alt="Product Image" class="img-fluid" style="border-radius: 8px;">
            </div>
            <div class="col-md-6 my-2">
                <h1>{{ $model->Name }} {{ $model->Surname }}</h1>
                <h5 class="my-4">Email: {{ $model->Email }}</h5>
                <h5 class="my-4">Phone: {{ $model->Phone }}</h5>
                <h5 class="my-4">Address: {{ $model->Address }}</h5>
                <p>Notes: </br> {{ $model->Notes }}</p>
                <div class="my-2">
                        <a href="/customers/edit/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-pen-to-square"></i></a>
                        <a href="/customers/delete/{{ $model->Id }}" class="btn text-light" style="background:#6671A3;"><i class="fa-solid fa-trash"></i></a>
                        <a href="/customers" class="btn text-light" style="background:#E5C9BF;"><i class="fa-solid fa-arrow-left"></i></a>
                </div>
            </div>
            
        </div>
    </div>

@endsection