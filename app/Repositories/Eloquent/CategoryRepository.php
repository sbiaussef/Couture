<?php
namespace sayCouture\Repositories\Eloquent;

use sayCouture\Product;
use sayCouture\Category;
use sayCouture\Repositories\Interfaces\CategoryInterface;

class CategoryRepository implements CategoryInterface
{
    public function getProductsByCategory($category){
        
        $id=Category::where('categoryName', $category)->pluck('id');

        return Product::where('category_id',$id)
                    ->orderBy('id','desc')
                    ->paginate(3);
        // return       
        //   Category::select('id','categoryName')
        // ->with(['products'=>function($query){
        //     $query->select('id','productName','productDescription','pictures','category_id','created_at','slug')
        //             ->orderBy('id','desc')
        //             ->paginate(3);
        // }])->get();
    }
}