<?php

use App\Http\Controllers\AttachmentsController;
use App\Http\Controllers\CustomersController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OrdersController;
use App\Http\Controllers\ProductCategoriesController;
use App\Http\Controllers\ProductsController;
use Illuminate\Support\Facades\Route;

Route::get("/", [HomeController::class, "index"]);

Route::get("/products", [ProductsController::class, "index"])->name('products');
Route::get("/products/edit/{id}", [ProductsController::class, "edit"]);
Route::post("/products/update/{id}", [ProductsController::class, "update"]);
Route::get("/products/delete/{id}", [ProductsController::class, "delete"]);
Route::get("/products/create", [ProductsController::class, "create"])->name("product.create");
Route::post("/products/create", [ProductsController::class, "addToDB"]);
Route::get("/products/preview/{id}", [ProductsController::class, "preview"]);
Route::get("/products/category/{id}", [ProductsController::class, "category"]);

Route::get("/categories", [ProductCategoriesController::class, "index"]);
Route::get("/categories/edit/{id}", [ProductCategoriesController::class, "edit"]);
Route::post("/categories/update/{id}", [ProductCategoriesController::class, "update"]);
Route::get("/categories/delete/{id}", [ProductCategoriesController::class, "delete"]);
Route::get("/categories/create", [ProductCategoriesController::class, "create"])->name("category.create");
Route::post("/categories/create", [ProductCategoriesController::class, "addToDB"]);

Route::get("/customers", [CustomersController::class, "index"]);
Route::get("/customers/edit/{id}", [CustomersController::class, "edit"]);
Route::post("/customers/update/{id}", [CustomersController::class, "update"]);
Route::get("/customers/delete/{id}", [CustomersController::class, "delete"]);
Route::get("/customers/create", [CustomersController::class, "create"])->name("customer.create");
Route::post("/customers/create", [CustomersController::class, "addToDB"]);
Route::get("/customers/preview/{id}", [CustomersController::class, "preview"]);

Route::get("/orders", [OrdersController::class, "index"])->name('orders');
Route::get("/orders/edit/{id}", [OrdersController::class, "edit"])->name('order.edit');
Route::patch("/orders/update/{id}", [OrdersController::class, "update"])->name("order.update");
Route::get("/orders/delete/{id}", [OrdersController::class, "delete"])->name("order.delete");
Route::get("/orders/create", [OrdersController::class, "create"])->name('order.create');
Route::post("/orders/create", [OrdersController::class, "addToDB"])->name("order.add");
Route::get("/orders/details/{id}", [OrdersController::class, "details"])->name("order.details");

Route::get("/search", [HomeController::class, "search"]);
