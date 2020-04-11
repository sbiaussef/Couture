<?php

namespace sayCouture\Observers;

use sayCouture\OrderDetail;
use sayCouture\Services\OrderService;

class OrderDetailObserver{
    
    
        /**
     * Listen to the Order created event.
     *
     * @param  \sayCouture\Order  $order
     * @return void
     */
    public function created(OrderDetail $orderDetail)
    {   

        
        OrderService::sendEmailToUser($orderDetail);

    }

    /**
     * Listen to the Order deleting event.
     *
     * @param  \sayCouture\Order  $order
     * @return void
     */
    public function deleting(OrderDetail $orderDetail)
    {
        //
    }
}