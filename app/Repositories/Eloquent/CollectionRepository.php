<?php
namespace sayCouture\Repositories\Eloquent;

use sayCouture\Collection;
use sayCouture\Repositories\Interfaces\CollectionInterface;

class CollectionRepository implements CollectionInterface
{
    public function getAllCollections(){
        
        return Collection::orderBy('created_at', 'desc')->get(['id','name','picture','slug']);
        
    }
    public function getProductsByCollection( $slug ){

       return Collection::with('Products:id,productName,productDescription,pictures,slug,collection_id')
                        ->where('slug',$slug)
                        ->get(['id','name'])
       
                ;

    }
}