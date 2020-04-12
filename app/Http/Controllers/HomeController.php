<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\fromVisitorEmail;
use App\Http\Requests\emailRequest;
use Illuminate\Support\Facades\Mail;
use App\Repositories\Interfaces\ProductInterface;
use App\Repositories\Interfaces\CategoryInterface;
use App\Repositories\Interfaces\CollectionInterface;

class HomeController extends Controller
{
    protected $product;
    protected $collection;
    protected $categories;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(ProductInterface $product,CollectionInterface $collection,CategoryInterface $categories)
    {
        $this->product=$product;
        $this->collection= $collection;
        $this->categories=$categories;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $lastProducts=$this->product->getRecentProduct();
        $collections=$this->collection->getAllCollections();
        
        return view('welcome',[
            'lastProducts'=>$lastProducts,
            'collections'=>$collections,
            ]);
        }
        
    public function productByCategory(Request $request){

            $productsCategoy=$this->categories->getProductsByCategory($request->get('category')); 
            return response()->json($productsCategoy);
            
    }

    public function sendEmail(emailRequest $request){

        $name=$request->name;
        $email=$request->email;
        $subject=$request->subject;
        $message=$request->message;
 
            try {
                Mail::to("sbia.ussef@gmail.com")
                    ->send(new fromVisitorEmail($name,$email,$subject,$message));
            } catch (\Throwable $th) {
                return $th;
            }
 
 
        return response()->json(["mesage"=>"add with success "], 200);
    }
}