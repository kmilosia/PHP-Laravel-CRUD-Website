@extends('main')
@section('menu')
    <a href="{{route('order.create')}}" class="btn text-light mx-2" style="background: #6671A3;">New order</a>
    <a href="{{route('orders')}}" class="btn text-light mx-2" style="background: #6671A3;">All orders</a>
@endsection
@section('content')
<div class="container">
    <h2>Edit Order</h2>
    <form method="POST" action="{{ route('order.update', $model->Id) }}">
        @csrf
        @method('PATCH')
        <div class="row gy-3">         

           <div class="col-sm-12 py-2">
               <div class="input-group">
                       <label class="input-group-text p-2">
                           <i class="material-icons-round align-middle m-2">person</i>
                           Customer
                       </label>
                   <input name="Customer" class="form-control validate" type="text" value="{{ $customer->Name}} {{ $customer->Surname }}" readonly>
               </div>
           </div>
           <div class="col-sm-12 py-2">
               <div class="input-group">
                   <label class="input-group-text">
                       <i class="material-icons-round palette-accent-text-color align-middle m-2">today</i>
                       Order Date
                   </label>
                   <input name="OrderDateTime" class="form-control validate" type="datetime-local" value="{{ $model->OrderDateTime }}" readonly>
                </div>
               @error('OrderDateTime')
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

            <div class="products-box">
            <label class="form-label">
                    <i class="material-icons-round palette-accent-text-color align-middle">category</i>
                    Products
                </label>
                @foreach($products as $key => $item)
                <div class="product" id="order_{{$key}}">
                    <input type="hidden" name="ProductsId[]" value="{{$item->Id}}">
                    <div class="input-group my-2 label-product_{{$key}}">
                        <label for="product_{{$key}}" class="input-group-text"><i class="material-icons-round palette-accent-text-color align-middle m-2">shopping_cart</i>
                            Product</label>
                        <input type="text" name="" data-price="{{$item->product->Price}}" id="product_{{$key}}" class="form-control validate products" value="{{ $item->product->Name }}" readonly>
                    </div>
                    <div class="input-group">
                        <label for="quantity_{{$key}}" class="input-group-text"><i class="material-icons-round palette-accent-text-color align-middle m-2"><span class="material-symbols-outlined">format_list_numbered
</span></i>
                            Quantity</label>
                        <input type="number" name="quantity[]" id="quantity_{{$key}}" value="{{$item->Quantity}}" class="form-control validate quantities">
                    </div>
                </div>
                @endforeach
            </div>
            <div class="col-sm-12 py-2">
            <label class="form-label">
                    <i class="material-icons-round palette-accent-text-color align-middle">sell</i>
                    Total Order Price
                </label>
               <div class="input-group">
                   <label class="input-group-text">
                       <i class="material-icons-round palette-accent-text-color align-middle m-2">payments</i>
                       
                   </label>
                   <input type="number" name="Total" id="total" class="form-control validate" value="{{ $model->Total }}" readonly>
               </div>
               @error('Total')
                        <div class="text-danger">{{ $message }}</div>
                @enderror
           </div>
            <div class="col-sm-12">
                <button type="submit" id="save" class="btn text-light" style="background: #6671A3;">Save</button>
                <span class="btn" id="checkPrice" style="background: #E5C9BF; margin-left: 0.5rem;justify-content: center; align-items: center; color:#6671A3;">Show Total</span>
            </div>
        </div>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.7.0.slim.js" integrity="sha256-7GO+jepT9gJe9LB4XFf8snVOjX3iYNb0FHYr5LI1N5c=" crossorigin="anonymous"></script>
<script>
    document.getElementById('checkPrice').addEventListener('click', function () {
        addTotal();
    });

    document.getElementById('save').addEventListener('click', function () {
        addTotal();
    });

    function addTotal()
    {
        let products = [];
        let quantities = [];
        let value = [];

        $('.quantities').each(function() {
            quantities.push($(this).val());
        });

        $('.products').each(function(index) {
            console.log(quantities)
            value[index] = $(this).data('price') * quantities[index];
            console.log($(this).data('price'))
            products.push(value);
        });

        for (let i=0;i<products[0].length;i++)
        {
            let result = eval(products[i].join('+'))
            document.querySelector('#total').value = parseFloat(result).toFixed(2);
        }
    }
</script>
@endsection
