<?php

namespace App\Repositories\Interfaces;

interface CommandInterface{

    public function addCustomer();
    public function addNewOrder($customer);
    public function addOrderDetails($order);

}