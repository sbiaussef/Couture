<?php
namespace sayCouture\Repositories\Eloquent;

use sayCouture\Customer;

use sayCouture\Order;
use sayCouture\OrderDetail;
use sayCouture\Product;
use sayCouture\Repositories\Interfaces\CommandInterface;


class CommandRepository implements CommandInterface{

    public function addCustomer($request){
        $customer=Customer::where('email',$request->email)->get(['id'])->first();
        if(empty($customer))
        {
            return Customer::create([
                "name"=>$request->name,
                "email"=>$request->email,
                "phone"=>$request->phone
            ]);
        }else{
            return ($customer);
        }
    }
    public function addNewOrder($Customer){
            return Order::create([
                'customer_id' => $Customer,
                'token'       => str_replace('/', '$', bcrypt(random_int(1,5000)))
                ]);
    }
    public function addOrderDetails($order,$request){
        $orderDetail=new OrderDetail();
        $product=Product::where('slug',$request->product_slug)->pluck('id');
        $orderDetail->order_id=$order;
        $orderDetail->product_id=$product[0];
        $orderDetail->details=json_encode([
            'emmanchure'=>$request->emmanchure,
            'haut_du_bras'=>$request->haut_du_bras,
            'tour_du_poignet'=>$request->tour_du_poignet,
            'longueur_des_manches'=>$request->longueur_des_manches,
            'tour_des_hanches'=>$request->tour_des_hanches,
            'tour_de_taille'=>$request->tour_de_taille,
            'tour_de_poitrine'=>$request->tour_de_poitrine,
            'profondeur_du_col'=>$request->profondeur_du_col,
            'type_du_col'=>$request->type_du_col,
            'longueur_poitrine'=>$request->longueur_poitrine,
            'taille'=>$request->taille,
            'taille_des_epaules'=>$request->taille_des_epaules
        ]);

        return $orderDetail->save();
    }

    public function orderConfirmed($token){
        Order::where('token',$token)
        ->first()
        ->update(['confirmed'=>1]);
    }

}