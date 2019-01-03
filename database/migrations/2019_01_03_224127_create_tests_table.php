<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tests', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable()->comment('姓名');
            $table->tinyInteger('age')->nullable()->comment('年龄');
            $table->tinyInteger('sex')->nullable()->comment('性别');
            $table->timestamps();
        });
        DB::statement("alter table `tests` comment'测试Ajax提交数据'");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tests');
    }
}
