<?php

namespace sayCouture;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $fillable = [
            'id',
            'product_id',
            'order_id',
            // 'price',
            // 'quantity',
            // 'discount',
            // 'total',
            'details',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
    public function order()
    {
        return $this->belongsTo(Order::class);
    }
}
