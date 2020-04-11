<?php
namespace sayCouture\Repositories\Interfaces;

interface CollectionInterface
{
    public function getAllCollections();
    public function getProductsByCollection($slug);
}
