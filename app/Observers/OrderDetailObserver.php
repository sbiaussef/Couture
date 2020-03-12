<?php

namespace App\Observers;

use App\OrderDetail;
use App\Services\OrderService;

class OrderDetailObserver{
    
    
        /**
     * Listen to the Order created event.
     *
     * @param  \App\Order  $order
     * @return void
     */
    public function created(OrderDetail $orderDetail)
    {   
        $order =new OrderService();
        
        $order->sendEmailToUser($orderDetail);

    }

    /**
     * Listen to the Order deleting event.
     *
     * @param  \App\Order  $order
     * @return void
     */
    public function deleting(OrderDetail $orderDetail)
    {
        //
    }
}