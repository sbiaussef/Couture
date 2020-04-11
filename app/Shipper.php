<?php

namespace sayCouture;

use Illuminate\Database\Eloquent\Model;

class Shipper extends Model
{
    protected $fillable = [
            'shipperID',
            'companyName',
            'phone'
    ];
    public function order()
    {
        return $this->hasMany('sayCouture\Order', 'shipperID', 'shipperID');
    }
}
