<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Latest_product;

use App\Post;

use App\Related_latest_product;

use App\Related_featured_product;

use App\Product_variation;

use App\Feature_product;

use App\Feature_product_variation;

use App\Randomize_product_slider;

use App\Best_seller_part;

class ProductController extends Controller
{
    public function product_detail($id,$feature)
    {
        $randomize_product_sliders = Randomize_product_slider::all();
        $best_seller_parts = Best_seller_part::all();

    	if($feature=='feature'){
            
    		
    		$product = Feature_product::find($id);
    		//echo '<pre>';
    		
        $related_products = $product->related_featured_products;
       // print_r($related_products);exit;
        //print_r($related_products);exit;
        
        $product_variations = $product->feature_product_variations;

        return view('product_detail')->withProduct($product)->withRelated_products($related_products)->withProduct_variations($product_variations)->withRandomize_product_sliders($randomize_product_sliders)->withBest_seller_parts($best_seller_parts);

    	}elseif($feature=='latest'){
    		
    	
        $product = Latest_product::find($id);
        $related_products = $product->related_latest_products;
        //print_r($related_products);exit;
        $product_variations = $product->product_variations;

        return view('product_detail')->withProduct($product)->withRelated_products($related_products)->withProduct_variations($product_variations)->withRandomize_product_sliders($randomize_product_sliders)->withBest_seller_parts($best_seller_parts);
		}else{

            //print_r('Jahid');exit;
            $product = Related_featured_product::find($feature);

            $column = 'feature_product_id'; // This is the name of the column you wish to search

            $product_variations = Feature_product_variation::where($column , '=', $id)->get();

           // $product_variations=Feature_product_variation::find($id);
            // echo '<pre>';
            // print_r($product_variations);exit;

            $column = 'feature_product_id'; // This is the name of the column you wish to search

            $related_products = Related_featured_product::where($column , '=', $id)->get();


            return view('product_detail')->withProduct($product)->withRelated_products($related_products)->withProduct_variations($product_variations)->withRandomize_product_sliders($randomize_product_sliders)->withBest_seller_parts($best_seller_parts);

        }
	}
}
