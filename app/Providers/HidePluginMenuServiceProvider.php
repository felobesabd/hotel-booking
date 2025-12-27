<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Botble\Base\Facades\DashboardMenu;

class HidePluginMenuServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        DashboardMenu::default()->beforeRetrieving(function () {
            // Remove plugin menu items from the sidebar
            DashboardMenu::default()->removeItem([
                'cms-core-plugins',
                'cms-core-plugins-installed',
                'cms-core-plugins-marketplace',
            ]);
        });
    }
}
