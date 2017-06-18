<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRelatedFeaturedProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('related_featured_products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('slider_image');
            $table->string('title');
            $table->string('category');
            $table->string('price');
            $table->integer('feature_product_id')->unsigned();
            $table->foreign('feature_product_id')->references('id')->on('feature_products');
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
        Schema::dropIfExists('related_featured_products');
    }
}
