<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGitProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('git_projects', function (Blueprint $table) {
            $table->increments('id')->comment('项目主键');
            $table->tinyInteger('sort')->default(1)->comment('排序');
            $table->tinyInteger('type')->default(1)->comment('1:github 2:gitee');
            $table->string('name')->default('')->comment('项目名');
            $table->timestamps();
            $table->softDeletes();
        });
        DB::statement("alter table `git_projects` comment'项目表'");    # 增加表注释
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('git_projects');
    }
}
