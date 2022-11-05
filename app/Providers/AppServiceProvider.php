<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\View\Components\FlashMessages;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
	 use FlashMessages;
	 
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('components.flash-messages', function ($view) {

          $messages = self::messages();
          return $view->with('messages', $messages);
      });
    }
}
