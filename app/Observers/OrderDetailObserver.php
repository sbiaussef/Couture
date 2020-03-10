<?php

namespace App\Observers;

use App\Mail\AdminCommandMail;
use App\Mail\CommandMail;
use App\Order;
use App\OrderDetail;
use App\Product;
use Illuminate\Support\Facades\Mail;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\User;

class OrderDetailObserver{

        /**
     * Listen to the Order created event.
     *
     * @param  \App\Order  $order
     * @return void
     */
    public function created(OrderDetail $orderDetail)
    {   

        $orderInfo   = Order::getOrder($orderDetail->order_id);
        $productinfo = Product::getProduct($orderDetail->product_id);

        try {
            Mail::to(request()->email)->send(new CommandMail($orderInfo,$productinfo));
            
        } catch (\Throwable $th) {
            return $th;
        }
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