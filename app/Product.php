<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

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

public function scopeGetProduct(Builder $builder,$product){

    return $builder->where('id',$product)->get(['id','productName','pictures',])->first();

}
    public function supplier()
    {
        return $this->belongsTo('App\Supplier');
    }
    public function category()
    {
        return $this->belongsTo(Category::class,'category_id');
    }
    public function collection()
    {
        return $this->belongsTo(Collection::class);
    }
    public function orderDetail()
    {
        return $this->hasMany(OrderDetail::class);
    }

}
