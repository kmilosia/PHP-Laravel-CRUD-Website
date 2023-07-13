<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    use HasFactory;
    const CREATED_AT = "CreationDateTime";
    const UPDATED_AT = "EditDateTime";
    protected $table = "purchasedetails";
    protected $primaryKey = "Id";
    public $fillable = [
        'IdPurchase',
        'IdProduct ',
        'Quantity',
        'EditDateTime',
        'CreationDateTime',
        'IsActive'
    ];

    public function order()
    {
        return $this->belongsTo(Order::class, 'IdPurchase','id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'IdProduct', 'id');
    }
}

