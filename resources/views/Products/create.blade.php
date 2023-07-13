@extends('main')
@section('menu')
<a href="/products/create" class="btn text-light mx-2" style="background: #6671A3;">New product</a>
    <a href="/products" class="btn text-light mx-2" style="background: #6671A3;">All Products</a>
@endsection
@section('content')
<div class="container">
    <form method="POST" action="/products/create">
        @csrf
        <div class="row gy-3">                 
       <h2>Create new product</h2>
       
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
       <div class="col-sm-12 col-md-6 py-2">
           <div class="input-group">
               <label class="input-group-text">
                   <i class="material-icons-round align-middle m-2">sell</i>
                   Price
               </label>
               <input name="Price" class="form-control validate" value="{{ $model->Price }}">
           </div>
           @error('Price')
                        <div class="text-danger">{{ $message }}</div>
            @enderror
       </div>
       <div class="col-sm-12 col-md-6 py-2">
           <div class="input-group">
               <label class="input-group-text">
                   <i class="material-icons-round align-middle m-2">subtitles</i>
                   Code
               </label>
               <input name="Code" class="form-control validate" value="{{ $model->Code }}">
           </div>
           @error('Code')
                        <div class="text-danger">{{ $message }}</div>
            @enderror
       </div>
       <div class="col-sm-12 py-2">
       <div class="input-group">
               <label class="input-group-text p-2">
                   <i class="material-icons-round align-middle m-2">category</i>
                   Category
               </label>
           <select class="form-control validate" id="category" name="IdCategory">
               @foreach($categories as $category)
               <option value="{{ $category->Id }}" {{ $category->Id == $model->IdCategory ? 'selected' : '' }}>
               {{ $category->Name }}
               </option>
               @endforeach
           </select>
           </div>
       </div>
       <div class="col-sm-12">
           <label class="form-label">
               <i class="material-icons-round palette-accent-text-color align-middle">image</i>
               Image URL
           </label>
           <textarea name="ImageURL" class="form-control validate">{{ $model->ImageURL }}</textarea>
           @error('ImageURL')
                <div class="text-danger">{{ $message }}</div>
            @enderror
       </div>
       <div class="col-sm-12">
           <label class="form-label">
               <i class="material-icons-round palette-accent-text-color align-middle">description</i>
               Description
           </label>
           <textarea rows="3" name="Description" class="form-control validate">{{ $model->Description }}</textarea>
           @error('Description')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
       </div>
       <div class="col-sm-12">
           <label class="form-label">
               <i class="material-icons-round palette-accent-text-color align-middle">newspaper</i>
               HTML Content
           </label>
           <textarea rows="4" name="ContentHTML" class="form-control validate">{{ $model->ContentHTML }}</textarea>
           @error('ContentHTML')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
       </div>
          
       <div class="col-sm-12">
           <button class="btn text-light" style="background: #6671A3;">Save</button>
       </div>
        </div>
    </form>
</div>
@endsection