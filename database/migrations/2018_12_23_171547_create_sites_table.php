<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSitesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sites', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('oauth_user_id')->unsigned()->default(0)->comment('第三方用户id');
            $table->string('name')->default('')->comment('网站名');
            $table->string('description')->default('')->comment('描述');
            $table->string('url')->default('')->comment('网站链接');
            $table->tinyInteger('audit')->default(0)->comment('审核状态1为通过审核');
            $table->tinyInteger('sort')->default(0)->comment('排序');
            $table->timestamps();
            $table->softDeletes();
        });
        DB::statement("alter table `sites` comment'推荐博客(审核)表'");    # 增加表注释
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sites');
    }
}
