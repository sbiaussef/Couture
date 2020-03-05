<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
            'id',
            'customer_id',
            // 'payment_id',
            // 'shipper_id',
            // 'orderDate',
            // 'shipDate',
            // 'freight',
            // 'tax'
    ];
    public function customer()
    {
        return $this->belongsTo('App\Customer');
    }
    public function payment()
    {
        return $this->belongsTo('App\Payment');
    }
    public function shipper()
    {
        return $this->belongsTo('App\Shipper');
    }

    public function orderDetail()
    {
        return $this->hasMany('App\OrderDetail');
    }

}
