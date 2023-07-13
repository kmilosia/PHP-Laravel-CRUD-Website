@extends('main')
@section('menu')
    <a href="{{route('order.create')}}" class="btn text-light mx-2" style="background: #6671A3;">New Order</a>
    <a href="{{route('orders')}}" class="btn text-light mx-2" style="background: #6671A3;">All Orders</a>
@endsection
@section('content')
<div class="container">
    <h2>Create New Order</h2>
    <form method="POST" action="{{route('order.add')}}">
        @csrf
        <div class="row gy-3">          

           <div class="col-sm-12 py-2">
               <div class="input-group">
                       <label class="input-group-text p-2">
                           <i class="material-icons-round align-middle m-2">person</i>
                           Customer
                       </label>
                   <select class="form-control validate" id="customers" name="IdCustomer">
                        @foreach($customers as $item)
                            <option {{ $item->Id == $model->IdCustomer ? 'selected' : '' }} value="{{ $item->Id }}">{{ $item->Name }} {{ $item->Surname }}</option>
                        @endforeach
                   </select>
               </div>
           </div>
           <div class="col-sm-12 py-2">
               <div class="input-group">
                   <label class="input-group-text">
                       <i class="material-icons-round palette-accent-text-color align-middle m-2">today</i>
                       Order Date
                   </label>
                   <input name="OrderDateTime" class="form-control validate" type="datetime-local" value="{{ date('Y-m-d\TH:i', strtotime($model->formatDate)) }}">
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
                <div class="product py-1" id="order_0">
                    <div class="input-group my-2 label-product_0">
                        <label for="product_0" class="input-group-text"><i class="material-icons-round palette-accent-text-color align-middle m-2">shopping_cart</i>
                            Product</label>
                        <select name="products[]" id="product_0" class="form-control validate products">
                            @foreach($products as $item)
                                <option {{ $model->IdProduct == $item->Id ? 'selected' : '' }} data-price="{{$item->Price}}" value="{{ $item->Id }}">{{ $item->Name }}</option>
                             @endforeach
                        </select>
                    </div>
                    <div class="input-group">
                        <label for="quantity_0" class="input-group-text"><i class="material-icons-round palette-accent-text-color align-middle m-2">format_list_numbered</i>
                            Quantity</label>
                        <input type="number" name="quantity[]" min="0" step="1" inputmode="numeric" id="quantity_0" class="form-control validate quantities">
                    </div>
                </div>
            </div>
            <div class="col-sm-12 py-2">
            <span class="btn add_row_paragraph text-light" id="addProduct" style="background: #6671A3;">Add another product</span>
{{--            <button type="button" class="btn btn-secondary" id="addProduct">Add Product</button>--}}
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
                   <input name="Total" class="form-control validate" value="" id="total" readonly>
               </div>
               @error('Total')
                        <div class="text-danger">{{ $message }}</div>
                @enderror
           </div>
            <div class="col-sm-12">
                <button type="submit" id="save" class="btn text-light" style="background: #6671A3;">Create order</button>
                <span class="btn" id="checkPrice" style="background: #E5C9BF; margin-left: 0.5rem;justify-content: center; align-items: center; color:#6671A3;">Show Total</span>

            </div>
        </div>
    </form>
</div>
<?php $arrProd = json_encode($products); ?>

<script src="https://code.jquery.com/jquery-3.7.0.slim.js" integrity="sha256-7GO+jepT9gJe9LB4XFf8snVOjX3iYNb0FHYr5LI1N5c=" crossorigin="anonymous"></script>
<script>
    let products = <?php echo $arrProd; ?>;
    document.getElementById('addProduct').addEventListener('click', function () {
        document.querySelector('#total').value = '';
        let lastProduct = $(".product:last");
        let lastId = lastProduct.attr("id");
        let splitId = lastId.split("_");
        let nextId = Number(splitId[1]) + 1;
        lastProduct.after("<div class='product' id='order_"+ nextId +"'></div>");
        $("#order_" + nextId).append('<div class="input-group my-2 label-product_'+nextId+'"><label for="product_'+nextId+'" class="input-group-text"><i class="material-icons-round palette-accent-text-color align-middle m-2">today</i>Product</label></div>');
        let selectElement = $('<select>');
        selectElement.attr('name', 'products[]');
        selectElement.attr('id', 'product_'+nextId);
        selectElement.attr('class', 'form-control validate products');
        $.each(products, function(index, value) {
             let option = $('<option>').text(value.Name).val(value.Id).attr('data-price', value.Price);
             selectElement.append(option);
        });

        $('.label-product_'+nextId).append(selectElement);
        $("#order_" + nextId).append('<div class="input-group"><label for="quantity_'+nextId+'" class="input-group-text"><i class="material-icons-round palette-accent-text-color align-middle m-2">today</i>Quantity</label><input type="number" name="quantity[]" id="quantity_'+nextId+'" min="0" inputmode="numeric" step="1" class="form-control validate quantities"></div>');
        if (document.getElementById('product_4'))
            document.querySelector('#addProduct').style.display = "none";
    });

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

    $('.products > option:selected').each(function(index) {
        value[index] = $(this).data('price') * quantities[index];
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
