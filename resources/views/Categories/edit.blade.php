@extends('main')
@section('menu')
    <a href="/categories/create" class="btn text-light mx-2" style="background: #6671A3;">New Product Category</a>
    <a href="/categories" class="btn text-light mx-2" style="background: #6671A3;">All Categories</a>
@endsection
@section('content')
<div class="container">
<h2>Edit Category Name</h2>
    <form method="POST" action="/categories/update/{{ $model->Id }}">
        @csrf
        <div class="row gy-3">
        <div class="col-sm-12 py-2">
                <div class="input-group">
                    <label class="input-group-text">
                        <i class="material-icons-round align-middle m-2">label</i>
                        Name
                    </label>
                    <input name="Name" class="form-control validate" value="{{ $model->Name }}">
                </div>
                @error('Name')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>     
            <div class="col-sm-12">
                <label class="form-label">
                    <i class="material-icons-round palette-accent-text-color align-middle">description</i>
                    Notes
                </label>
                <textarea rows="3" name="Notes" class="form-control validate">{{ $model->Notes }}</textarea>
            </div>       
            @error('Notes')
                    <div class="text-danger">{{ $message }}</div>
                @enderror       
            <div class="col-sm-12">
            <button class="btn text-light" style="background: #6671A3;">Save</button>
            </div>
        </div>
    </form>
</div>
@endsection