<?php 

namespace App\Services;

use App\Product;
use App\OrderDetail;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\User;
use App\Mail\AdminCommandMail;
use Illuminate\Support\Facades\Mail;


class EventService{
    
    /**
    * Comment...............
    *
    * @param  Class param
    * @return void
    */
    public static function sendEmailToAdmin($event){
        $orderDetail=OrderDetail::where('order_id',$event->getOrder()->id)->get()->first();
        $productinfo = Product::getProduct($orderDetail->product_id);
        $admins = User::where('role_id',Role::where('name','admin')->get(['id'])->first()->id)
                        ->pluck('email')->toArray();
    
        try {
            Mail::to($admins)->send(new AdminCommandMail($productinfo,$orderDetail));
        } catch (\Throwable $th) {
            return $th;
        }
    }
}
