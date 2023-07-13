<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    protected $table = "customer";
    protected $primaryKey = "Id";
    const CREATED_AT = "CreationDateTime";
    const UPDATED_AT = "EditDateTime";

    public function orders()
    {
        return $this->hasMany(Order::class, 'IdCustomer ', 'id');
    }

}
