<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $fillable = [
        'id',
        'category_id',
        'collection_id',
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
        'note',
        'slug'
];
    public function supplier()
    {
        return $this->belongsTo('App\Supplier');
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function collection()
    {
        return $this->belongsTo(Collection::class);
    }
    public function orderDetail()
    {
        return $this->hasMany('App\OrderDetail');
    }

}
