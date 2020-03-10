<?php

namespace App\Providers;

use App\Order;
use App\OrderDetail;
use Illuminate\Support\Facades\Log;
use App\Observers\OrderDetailObserver;
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
