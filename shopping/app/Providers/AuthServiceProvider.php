<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('category_list', function ($user) {
            return $user->checkPermissionAccess(config('permissions.access.list_category'));
        });
        Gate::define('menu_list', function ($user) {
            return $user->checkPermissionAccess(config('permissions.access.list_menu'));
        });
    }
}
