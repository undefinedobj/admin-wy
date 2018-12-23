<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFriendShipLinksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('friend_ship_links', function (Blueprint $table) {
            $table->increments('id')->comment('主键id');
            $table->string('name', 50)->default('')->comment('链接名');
            $table->string('url')->default('')->comment('链接地址');
            $table->boolean('sort')->nullable()->default(1)->comment('排序');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('friend_ship_links');
    }
}
