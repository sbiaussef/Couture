<?php
namespace App\Repositories\Eloquent;

use App\Product;
use App\Repositories\Interfaces\CategoryInterface;

class CategoryRepository implements CategoryInterface
{
    public function getProductsByCategory(){
        
        return Product::with('category:id,categoryName')
        ->orderBy('id','desc')
        ->groupBy('id')
        ->get(['id','productName','productDescription','pictures','category_id','created_at','slug'])
                ;
    }
}