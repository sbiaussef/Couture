<?php
namespace sayCouture\Repositories\Eloquent;

use sayCouture\Product;
use sayCouture\Repositories\Interfaces\ProductInterface;

class ProductRepository implements ProductInterface
{
    public function getRecentProduct(){
        return Product::orderBy('created_at', 'desc')->take(6)->get(['id','productName','pictures','slug']);
    }
    public function getProductBySlug($slug){
        return Product::where('slug',$slug)->get(['id','productName','productDescription','pictures','slug']);
    }
}