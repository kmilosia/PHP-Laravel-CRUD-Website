<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    const CREATED_AT = "CreationDateTime";
    const UPDATED_AT = "EditDateTime";
    protected $table = "product";
    protected $primaryKey = "Id";

    public function productCategories()
    {
        return $this->belongsTo(ProductCategory::class, 'IdCategory','id');
    }

    public function orderDetails()
    {
        return $this->hasMany(OrderDetail::class, 'IdProduct','id');
    }
}
