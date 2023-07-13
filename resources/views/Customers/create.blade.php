@extends('main')
@section('menu')
<a href="/customers/create" class="btn text-light mx-2" style="background: #6671A3;">New Customer</a>
    <a href="/customers" class="btn text-light mx-2" style="background: #6671A3;">All Customers</a>
@endsection
@section('content')
<div class="container">
    <h2>Create Customer's Account</h2>
    <form method="POST" action="/customers/create">
        @csrf
        <div class="row gy-3">
        <div class="col-sm-12 col-md-6 py-2">
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
                        <i class="material-icons-round align-middle m-2">label</i>
                        Surname
                    </label>
                    <input name="Surname" class="form-control validate" value="{{ $model->Surname }}">
                </div>
                @error('Surname')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>       
            <div class="col-sm-12 col-md-6 py-2">
                <div class="input-group">
                    <label class="input-group-text">
                        <i class="material-icons-round align-middle m-2">mail</i>
                        Email
                    </label>
                    <input name="Email" class="form-control validate" value="{{ $model->Email }}">
                </div>
                @error('Email')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>   
            <div class="col-sm-12 col-md-6 py-2">
                <div class="input-group">
                    <label class="input-group-text">
                        <i class="material-icons-round align-middle m-2">smartphone</i>
                        Phone
                    </label>
                    <input name="Phone" class="form-control validate" value="{{ $model->Phone }}">
                </div>
                @error('Phone')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>   
            <div class="col-sm-12 py-2">
                <div class="input-group">
                    <label class="input-group-text">
                        <i class="material-icons-round align-middle m-2">home</i>
                        Address
                    </label>
                    <input name="Address" class="form-control validate" value="{{ $model->Address }}">
                </div>
                @error('Address')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div> 
            <div class="col-sm-12 py-2">
                <div class="input-group">
                    <label class="input-group-text">
                        <i class="material-icons-round align-middle m-2">image</i>
                        Avatar URL
                    </label>
                    <input name="AvatarURL" class="form-control validate" value="{{ $model->AvatarURL }}">
                </div>
                @error('AvatarURL')
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