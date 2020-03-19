<?php
namespace App\Services;

use App\Order;
use App\Product;
use App\Mail\CommandMail;
use Illuminate\Support\Facades\Mail;

class OrderService{

     public static function sendEmailToUser($orderDetail){
        
        $orderInfo   = Order::getOrder($orderDetail->order_id);
        $productinfo = Product::getProduct($orderDetail->product_id);

        try {
            Mail::to(request()->email)->send(new CommandMail($orderInfo,$productinfo));
            
        } catch (\Throwable $th) {
            return $th;
        }
    }
}