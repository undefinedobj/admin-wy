<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');   # 原`后台首页`路由

    // $router->get('activity/product/{id}', 'ActivityController@activityProduct');
	// $router->post('activity/product/create', 'ActivityController@activityProductCreate');

    #  资源路由
    $router->resources([	
        'article' => ArticleController::class,					
        'category' => CategoryController::class,
        'tag' => TagController::class,
        'comment' => CommentController::class,					
	]);
});
