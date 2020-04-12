<?php
namespace App\Repositories\Interfaces;


interface ProductInterface
{
    
    public function getRecentProduct();
    public function getProductBySlug($slug);

}