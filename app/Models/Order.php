<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    const CREATED_AT = "CreationDateTime";
    const UPDATED_AT = "EditDateTime";
    protected $table = "purchase";
    protected $primaryKey = "Id";
    public $fillable = [
        'OrderDateTime',
        'IdCustomer',
        'Total',
        'Notes',
        'EditDateTime',
        'CreationDateTime',
        'IsActive'
    ];


    public function orderDetails()
    {
        return $this->hasMany(OrderDetail::class, 'IdPurchase', 'id');
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'IdCustomer');
    }

    public function customerName()
    {
        return $this->customer->pluck('Name');
    }
}
