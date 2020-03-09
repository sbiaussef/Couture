<?php

namespace App;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
            'id',
            'customer_id',
            'token',
            'confimed'
            // 'payment_id',
            // 'shipper_id',
            // 'orderDate',
            // 'shipDate',
            // 'freight',
            // 'tax'
    ];

    public function scopeGetOrder(Builder $builder,$order){

        return $builder->with('orderDetails:id,product_id,order_id,details')
                    ->with('customer:id,name,email')
                    ->where('id',$order)
                    ->get(['id','customer_id','token'])
                    ->first();

    }
    

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

    public function orderDetails()
    {
        return $this->hasMany(OrderDetail::class);
    }

}
