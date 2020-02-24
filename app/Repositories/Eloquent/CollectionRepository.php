<?php
namespace App\Repositories\Eloquent;

use App\Collection;
use App\Repositories\Interfaces\CollectionInterface;

class CollectionRepository implements CollectionInterface
{
    public function getAllCollections(){
        
        return Collection::orderBy('created_at', 'desc')->get();
        
    }
    public function getProductsByCollection( $slug ){

        return Collection::with('products')->where('slug', $slug)->paginate(6);

    }
}