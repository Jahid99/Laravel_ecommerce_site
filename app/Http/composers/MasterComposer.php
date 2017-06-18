<?php

namespace App\Http\Composers;

use App\site_info;

use Illuminate\Contracts\View\View;

use App\Randomize_product_slider;

use App\Cart;

class MasterComposer
{
	public function compose(View $view)
	{

		$randomize_product_sliders = Randomize_product_slider::all();
        $session_id = session()->getId();
        $column = 's_id'; // This is the name of the column you wish to search
        $cartproducts = Cart::where($column , '=', $session_id)->get();
        $total_products_count=0;
        foreach($cartproducts as $cartproduct){

            
            $total_products_count += $cartproduct->quantity;


        }


		$view->with('site_info',site_info::find(1))->withTotal_products_count($total_products_count);
	}
}