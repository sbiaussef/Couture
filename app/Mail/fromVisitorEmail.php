<?php

namespace sayCouture\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class fromVisitorEmail extends Mailable
{
    use Queueable, SerializesModels;

    public $name;
    public $email;
    public $subjects;
    public $messages;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($name,$email,$subjects,$message)
    {
        $this->name=$name;
        $this->email=$email;
        $this->subjects=$subjects;
        $this->messages=$message;

    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('email.visitorContact')->from($this->email);
    }
}
