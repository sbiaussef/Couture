<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'id','categoryName','description','picture'
    ];

    public function product()
    {
        return $this->hasMany('App\Product');
    }
}
