<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRelatedLatestProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('related_latest_products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('slider_image');
            $table->string('title');
            $table->string('category');
            $table->string('price');
            $table->integer('latest_product_id')->unsigned();
            $table->foreign('latest_product_id')->references('id')->on('latest_products');
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
        //
    }
}