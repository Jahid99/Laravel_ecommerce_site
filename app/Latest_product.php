<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Latest_product extends Model
{
    public function related_latest_products()
    {
        return $this->hasMany('App\Related_latest_product');
    }
    public function product_variations()
    {
        return $this->hasMany('App\Product_variation');
    }
}
