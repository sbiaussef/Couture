<?php

namespace sayCouture\Providers;

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
            'sayCouture\Repositories\Interfaces\ProductInterface',
            'sayCouture\Repositories\Eloquent\ProductRepository'
        );
        $this->app->bind(
            'sayCouture\Repositories\Interfaces\CollectionInterface',
            'sayCouture\Repositories\Eloquent\CollectionRepository'
        );
        $this->app->bind(
            'sayCouture\Repositories\Interfaces\CategoryInterface',
            'sayCouture\Repositories\Eloquent\CategoryRepository'
        );
        $this->app->bind(
            'sayCouture\Repositories\Interfaces\CommandInterface',
            'sayCouture\Repositories\Eloquent\CommandRepository'
        );
    }
}
