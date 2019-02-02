<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Widgets\InfoBox;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->header('Dashboard')
            ->description('Description...')
            // ->row(Dashboard::title())
            ->row(function (Row $row) {

            $row->column(4, new InfoBox('订单数', 'shopping-cart', 'green', '/admin/order', 3));
            $row->column(3, new InfoBox('文章数', 'book', 'yellow', '/admin/article', 2));
            $row->column(5, new InfoBox('商品数', 'image', 'blue', '/admin/product', 2));
            $row->column(5, new InfoBox('用户数', 'users', 'red', '/admin/member', 4));
                
                // $row->column(4, function (Column $column) {
                //     $column->append(Dashboard::environment());
                // });

                // $row->column(4, function (Column $column) {
                //     $column->append(Dashboard::extensions());
                // });

                // $row->column(4, function (Column $column) {
                //     $column->append(Dashboard::dependencies());
                // });
            });
    }
}
