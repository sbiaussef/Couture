<?php

namespace sayCouture\Providers;

use sayCouture\Order;
use sayCouture\OrderDetail;
use Illuminate\Support\Facades\Log;
use sayCouture\Observers\OrderDetailObserver;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        OrderDetail::observe(OrderDetailObserver::class);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
