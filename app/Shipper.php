<?php

namespace App;

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
        return $this->hasMany('App\Order', 'shipperID', 'shipperID');
    }
}
