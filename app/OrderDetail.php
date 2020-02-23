<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $fillable = [
            'orderDetailsID',
            'productID',
            'orderID',
            'price',
            'quantity',
            'discount',
            'total',
            'size',
            'color'
    ];

    public function product()
    {
        return $this->belongsTo('App\Product', 'productID');
    }
    public function order()
    {
        return $this->belongsTo('App\Order', 'orderID');
    }
}
