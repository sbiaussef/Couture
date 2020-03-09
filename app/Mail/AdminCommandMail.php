<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class AdminCommandMail extends Mailable
{
    use Queueable, SerializesModels;

    protected $order;
    protected $product;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($order,$product)
    {
        $this->order=$order;
        $this->product=$product;
    }


    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $picture =collect((json_decode($this->product->pictures)))->first();

        return $this->from("sbia.youssef@gmail.com")
                    ->subject('Nex Order is passed')
                    ->view('email.adminCommandEmail')
                    ->with([
                        'order' => $this->order,
                        'product' => $this->product,
                        'picture'=> $picture
                    ]);

    }
}
