<?php

namespace sayCouture;

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
        return $this->hasMany('sayCouture\Order', 'paymentID', 'paymentID');
    }

}
