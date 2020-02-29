<?php

namespace App\Http\Controllers;

use App\Repositories\Interfaces\ProductInterface;
use Illuminate\Http\Request;

class ProductController extends Controller
{   
    private $product;

    public function __construct(ProductInterface $productInterface)
    {
        $this->product=$productInterface;
    }
    public function show($slug){
        $products = $this->product->getProductBySlug($slug);
        return view('pages.product',['products' => $products]);
    }
    public function command($slug){
        $products = $this->product->getProductBySlug($slug);
        return view('pages.product',['products' => $products]);
    }
}
