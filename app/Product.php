<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
            'productID',
            'categoryID',
            'supplierID',
            'productName',
            'productDescription',
            'productQuantity',
            'unitPrice',
            'availableSize',
            'availableColor',
            'discount',
            'unitWeight',
            'picture',
            'rank',
            'note'
    ];
    public function supplier()
    {
        return $this->belongsTo('App\Supplier');
    }
    public function category()
    {
        return $this->belongsTo('App\category');
    }
    public function orderDetail()
    {
        return $this->hasMany('App\OrderDetail');
    }

}
