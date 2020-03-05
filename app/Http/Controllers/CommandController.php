<?php

namespace App\Http\Controllers;

use App\Repositories\Interfaces\CommandInterface;
use Illuminate\Http\Request;
use PDF;
class CommandController extends Controller
{
    protected $command;
    public function __construct(CommandInterface $command)
    {
        $this->command=$command;
    }

    public function index(){
        $products=$this->command->addCustomer();
        //dd($product->id);
        $order=$this->command->addNewOrder($products->id);
        // dd($order);
        $orderDetails=$this->command->addOrderDetails($order->id);


        $pdf = PDF::loadView('pages.command',['products'=>$products]);
        return $pdf->download('invoice.pdf');

        return redirect()->back();
    }
}
