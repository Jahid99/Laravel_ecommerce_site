<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feature_product extends Model
{
    public function related_featured_products()
    {
        return $this->hasMany('App\Related_featured_product');
    }
    public function feature_product_variations()
    {
        return $this->hasMany('App\Feature_product_variation');
    }
}
