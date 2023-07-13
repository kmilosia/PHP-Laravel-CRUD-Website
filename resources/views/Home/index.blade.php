@extends('main')
@section('content')
<div class="d-flex justify-content-center align-items-center" style="max-width: 100%; min-height: 100vh;">
<section class="pt-5 pb-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div id="carouselExampleIndicators2" class="carousel slide" data-bs-ride="carousel">

                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">

                                <div class="col-md-6 mb-3">
                                    <div class="card">
                                    <img class="img-fluid" style="height:40vh; object-fit:cover; border-radius:8px 8px 0px 0px;  filter: grayscale(100%);" src="https://iili.io/H8YxWZb.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">Products</h4>
                                            <p class="card-text">E-commerce AstroShop Products</p>
                                            <a href="{{ route('product.create') }}" class="btn text-light" style="background: #6671A3;">Add New Product</a>
                                        </div>

                                    </div>
                                </div>
                               
                                <div class="col-md-6 mb-3">
                                    <div class="card">
                                    <img class="img-fluid" style="height:40vh; object-fit:cover; border-radius:8px 8px 0px 0px;  filter: grayscale(100%);" src="https://iili.io/HUgNgj9.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">Orders</h4>
                                            <p class="card-text">Our customers' online orders.</p>
                                            <a href="{{ route('order.create') }}" class="btn text-light" style="background: #6671A3;">Add New Order</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="card">
                                    <img class="img-fluid" style="height:40vh; object-fit:cover; border-radius:8px 8px 0px 0px;  filter: grayscale(100%);" src="https://iili.io/H8YxOFV.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">Categories</h4>
                                            <p class="card-text">Our shop product's categories.</p>
                                            <a href="{{ route('category.create') }}" class="btn text-light" style="background: #6671A3;">Add New Category</a>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="card">
                                    <img class="img-fluid" style="height:40vh; object-fit:cover; border-radius:8px 8px 0px 0px;  filter: grayscale(100%);" src="https://iili.io/HUgNi4j.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">Customers</h4>
                                            <p class="card-text">E-commerce website customers.</p>
                                            <a href="{{ route('customer.create') }}" class="btn text-light" style="background: #6671A3;">Add New Customer</a>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 text-center">
                <a class="btn text-light mr-1" href="#carouselExampleIndicators2" role="button" data-bs-slide="prev" style="background: #6671A3;">
                    <i class="fa fa-arrow-left"></i>
                </a>
                <a class="btn text-light" href="#carouselExampleIndicators2" role="button" data-bs-slide="next" style="background: #6671A3;">
                    <i class="fa fa-arrow-right"></i>
                </a>
            </div>
            </div>
        </div>
    </div>
</section>
    </div>

@endsection
