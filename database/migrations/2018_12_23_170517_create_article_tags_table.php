<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticleTagsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('article_tags', function (Blueprint $table) {
            $table->integer('article_id')->unsigned()->default(0)->comment('文章id');
            $table->integer('tag_id')->unsigned()->default(0)->comment('标签id');
            $table->timestamps();
            $table->softDeletes();
        });
        DB::statement("alter table `article_tags` comment'关系表：文章 - 标签'");    # 增加表注释
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('article_tags');
    }
}
