<?php

namespace App\Observers;

use App\Order;
use App\Product;
use App\OrderDetail;
use App\Mail\CommandMail;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\User;
use App\Mail\AdminCommandMail;
use App\Services\OrderService;
use Illuminate\Support\Facades\Mail;

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