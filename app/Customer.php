<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $fillable = [
        'customerID',
        'firstName',
        'lastName',
        'adress',
        'city',
        'state',
        'postalCode',
        'country',
        'phone',
        'email',
        'password',
    ];

    protected $hidden = ['_token'];
    public function order()
    {
        return $this->hasMany('App\Order', 'costomerID', 'costomerID');
    }

}
