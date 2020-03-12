<?php

namespace App\Listeners;

use App\Events\OrderUpdated;
use App\Services\EventService;
use Illuminate\Support\Facades\Mail;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendEmailToAdministrator
{
    protected $eventService;

    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct(EventService $eventService)
    {
        $this->eventService=$eventService;
    }

    /**
     * Handle the event.
     *
     * @param  OrderUpdated  $event
     * @return void
     */
    public function handle(OrderUpdated $event)
    {
        $this->eventService->sendEmailToAdmin($event);
    }
}
