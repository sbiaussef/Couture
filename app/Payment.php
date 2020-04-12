<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $fillable = [
            'paymentID',
            'paymentType',
            'allowed'
    ];

    public function order()
    {
        return $this->hasMany('App\Order', 'paymentID', 'paymentID');
    }

}
