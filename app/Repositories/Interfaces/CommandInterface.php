<?php

namespace sayCouture\Repositories\Interfaces;

interface CommandInterface{

    public function addCustomer($request);
    public function addNewOrder($customer);
    public function addOrderDetails($order,$request);
    public function orderConfirmed($token);
    



}