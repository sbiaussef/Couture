<?php

namespace App\Http\Controllers;

use App\Product;
use App\Repositories\Interfaces\CategoryInterface;
use App\Repositories\Interfaces\CollectionInterface;
use App\Repositories\Interfaces\ProductInterface;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    protected $product;
    protected $collection;
    protected $categories;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(ProductInterface $product,CollectionInterface $collection,CategoryInterface $categories)
    {
        $this->product=$product;
        $this->collection= $collection;
        $this->categories=$categories;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $lastProducts=$this->product->getRecentProduct();
        $collections=$this->collection->getAllCollections();
        $productsCategoy=$this->categories->getProductsByCategory();
            // dd($productsCategoy);
            // foreach($productsCategoy as $product)
            // {
            //     dd(collect((json_decode($product->pictures)))->first());
            // }

        return view('welcome',[
            'lastProducts'=>$lastProducts,
            'collections'=>$collections,
            'productsCategoy'=>$productsCategoy,
            ]);
    }
}
