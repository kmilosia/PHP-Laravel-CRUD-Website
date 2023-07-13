@extends('main')
@section('content')
<div class="container">
    <h1 class="text-light text-center m-3">Search for products</h1>
<form class="d-flex" action="/search" method="GET">
    @csrf
    <input class="form-control me-2 p-3" type="search" name="searchTerm" placeholder="Search products.." aria-label="Search">
    <button class="btn btn-outline-success py-3 px-4" type="submit"><i class="fa-solid fa-magnifying-glass" style="color: #ffffff;"></i></button>
</form>

@if ($products->isEmpty())
        <p>No products found.</p>
    @else
    <table class="table bg-light my-4" style="border-radius: 4px;">
            <tbody class="p-2">
            @foreach ($products as $product)
                <tr class="border-bottom m-2 p-2">
                    <td class="p-4"  style="vertical-align: middle;"><img src="{{ $product->ImageURL }}" style="width: 100px;height:auto;"/></td>
                    <td class="card-title h4 p-4"  style="vertical-align: middle;"><a href="/products/preview/{{ $product->Id }}" class="text-dark" style="text-decoration: none;">{{ $product->Name }}</a></td>
                    <td class="p-4" style="vertical-align: middle;">{{ $product->Price }} &euro;</td>
                    <td class="p-4"  style="vertical-align: middle;">{{ $product->Code }}</td>
                    <td class="p-4"  style="vertical-align: middle;">
                        <div class="my-2">
                            <a href="/products/edit/{{ $product->Id }}" class="btn text-light mx-2" style="background:#6671A3;"><i class="fa-solid fa-pen-to-square"></i></a>
                            <a href="/products/delete/{{ $product->Id }}" class="btn text-light mx-2" style="background:#E5C9BF;"><i class="fa-solid fa-trash"></i></a>
                            <a href="/products/preview/{{ $product->Id }}" class="btn text-light mx-2" style="background:#6671A3;"><i class="fa-solid fa-eye"></i></a>
                        </div>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    @endif
</div>
@endsection