<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFeatureProductVariationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('feature_product_variations', function (Blueprint $table) {
            $table->increments('id');
            $table->string('image');
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
        Schema::dropIfExists('feature_product_variations');
    }
}
