<?php

namespace sayCouture\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class AdminCommandMail extends Mailable
{
    use Queueable, SerializesModels;


    protected $product;
    protected $orderDetail;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($product,$orderDetail)
    {

        $this->product=$product;
        $this->orderDetail=$orderDetail;
    }


    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $picture =collect((json_decode($this->product->pictures)))->first();
        $details=json_decode($this->orderDetail->details);
        return $this->from("sbia.youssef@gmail.com")
                    ->subject('Nex Order is passed')
                    ->view('email.adminCommandEmail')
                    ->with([
                        'product' => $this->product,
                        'picture'=> $picture,
                        'details'=>$details
                    ]);

    }
}
