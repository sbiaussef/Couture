<?php
namespace App\Repositories\Eloquent;

use App\Customer;
use App\Order;
use App\OrderDetail;
use App\Product;
use App\Repositories\Interfaces\CommandInterface;
use Illuminate\Http\Request;

class CommandRepository implements CommandInterface{

    public function addCustomer(){

        return Customer::create([
            "name"=>request()->name,
            "email"=>request()->email,
            "phone"=>request()->phone
        ]);
    }
    public function addNewOrder($Customer){
            return Order::create([
                'customer_id' => $Customer
                ]);
    }
    public function addOrderDetails($order){
        $orderDetail=new OrderDetail();
        $product=Product::where('slug',request()->product_slug)->pluck('id');
        $orderDetail->order_id=$order;
        $orderDetail->product_id=$product[0];
        $orderDetail->details=json_encode([
            'emmanchure'=>request()->emmanchure,
            'haut-du-bras'=>request()->haut_du_bras,
            'tour_du_poignet'=>request()->tour_du_poignet,
            'longueur_des_manches'=>request()->longueur_des_manches,
            'tour_des_hanches'=>request()->tour_des_hanches,
            'tour_de_taille'=>request()->tour_de_taille,
            'tour_de_poitrine'=>request()->tour_de_poitrine,
            'profondeur_du_col'=>request()->profondeur_du_col,
            'type_du_col'=>request()->type_du_col,
            'longueur_poitrine'=>request()->longueur_poitrine,
            'taille'=>request()->taille,
            'taille_des_epaules'=>request()->taille_des_epaules
        ]);

        return $orderDetail->save();
    }
}