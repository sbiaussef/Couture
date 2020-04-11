<?php

namespace sayCouture\Http\Controllers;

use sayCouture\Http\Requests\CombinedRequest;
use sayCouture\Repositories\Interfaces\CommandInterface;

class CommandController extends Controller
{
    protected $command;

    public function __construct(CommandInterface $command)
    {
        $this->command=$command;
    }

    public function index(CombinedRequest $request){
        
        $products=$this->command->addCustomer($request);

        $order=$this->command->addNewOrder($products->id);

        $orderDetails=$this->command->addOrderDetails($order->id,$request);

        return view('pages.confirmOrder');
    }

    /**
    * Comment...............
    *
    * @param  Class param
    * @return void
    */
    public function confirmOrder($token){

        $this->command->orderConfirmed($token);

        return view('pages.OrderConfirmed');
    }
}
