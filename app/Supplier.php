<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $fillable = [
            'supplierID',
            'companyName',
            'contactfName',
            'contactlName',
            'contactTitle',
            'adress',
            'city',
            'state',
            'postalCode',
            'country',
            'phone',
            'fax',
            'email',
            'url',
            'paymentMethod'
    ];
    public function product()
    {
        return $this->hasMany('App\Product');
    }
}
