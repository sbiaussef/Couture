<?php
namespace App\Repositories\Interfaces;

interface CollectionInterface
{
    public function getAllCollections();
    public function getProductsByCollection($slug);
}
