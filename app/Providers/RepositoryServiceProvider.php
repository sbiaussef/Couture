<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(
            'App\Repositories\Interfaces\ProductInterface',
            'App\Repositories\Eloquent\ProductRepository'
        );
        $this->app->bind(
            'App\Repositories\Interfaces\CollectionInterface',
            'App\Repositories\Eloquent\CollectionRepository'
        );
        $this->app->bind(
            'App\Repositories\Interfaces\CategoryInterface',
            'App\Repositories\Eloquent\CategoryRepository'
        );
        $this->app->bind(
            'App\Repositories\Interfaces\CommandInterface',
            'App\Repositories\Eloquent\CommandRepository'
        );
    }
}
