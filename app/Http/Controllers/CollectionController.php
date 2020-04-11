<?php

namespace sayCouture\Http\Controllers;
use sayCouture\Repositories\Interfaces\CollectionInterface;

class CollectionController extends Controller
{

    protected $collection;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(CollectionInterface $collection)
    {
        $this->collection= $collection;
    }
    public function showAllProductByCollection($slug){

        $collections = collect($this->collection->getProductsByCollection($slug));
        
        return view('pages.collection',['collections'=>$collections]);
    
    }
}
