<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_categories', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('order')->unsigned()->default(1)->nullable(true);
            $table->string('name', 255)->nullable(true);
            $table->string('slug', 255)->nullable(true);
            //`$table->softDeletes();`  |  Adds a nullable `deleted_at` TIMESTAMP equivalent column for soft deletes.
            $table->softDeletes();
            //`$table->timestamps();`  |  Adds nullable `created_at` and `updated_at` TIMESTAMP equivalent columns.
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_categories');
    }
}
