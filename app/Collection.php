<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Collection extends Model
{

    protected $fillable=[
        'id','name','picture','slug'
    ];
    
        public function getRouteKeyName()
            {
                return 'slug';
            }
        public function products()
        {
            return $this->hasMany(Product::class);
        }
}
