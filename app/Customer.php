<?php

namespace sayCouture;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $fillable = [
        'customerID',
        'name',
        // 'adress',
        // 'city',
        // 'state',
        // 'postalCode',
        // 'country',
        'phone',
        'email',
        // 'password',
    ];

    protected $hidden = ['_token'];
    public function order()
    {
        return $this->hasMany('sayCouture\Order');
    }

}
