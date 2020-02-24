<?php
namespace App\Repositories\Eloquent;

use App\Product;
use App\Repositories\Interfaces\ProductInterface;

class ProductRepository implements ProductInterface
{
    public function getRecentProduct(){
        return Product::orderBy('created_at', 'desc')->paginate(6);
    }
}