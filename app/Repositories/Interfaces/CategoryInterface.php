<?php
namespace sayCouture\Repositories\Interfaces;

interface CategoryInterface
{
    public function getProductsByCategory($category);
}