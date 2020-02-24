<?php

namespace App\Http\Controllers;
use Eloquence, Mappable; 
use App\Collection;
use Illuminate\Http\Request;
use App\Repositories\Interfaces\CollectionInterface;

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

        $collections = $this->collection->getProductsByCollection($slug);
        return view('collection',['collections'=>$collections]);
    
    }
}
