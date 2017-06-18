<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRandomizeProductSlidersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('randomize_product_sliders', function (Blueprint $table) {
            $table->increments('id');
            $table->string('image_link');
            $table->string('image');
            $table->string('title_link');
            $table->string('title');
            $table->string('category_link');
            $table->string('category');
            $table->integer('price');
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
        Schema::dropIfExists('randomize_product_sliders');
    }
}