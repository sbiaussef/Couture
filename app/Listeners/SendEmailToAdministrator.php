<?php

namespace sayCouture\Listeners;

use sayCouture\Events\OrderUpdated;
use sayCouture\Services\EventService;
use Illuminate\Support\Facades\Mail;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendEmailToAdministrator
{
    

    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    /**
     * Handle the event.
     *
     * @param  OrderUpdated  $event
     * @return void
     */
    public function handle(OrderUpdated $event)
    {
        EventService::sendEmailToAdmin($event);
    }
}
