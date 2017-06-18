<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Cart;

use Illuminate\Support\Facades\Input;

use Illuminate\Support\Facades\Redirect;

use App\Randomize_product_slider;

use Session;

class CartController extends Controller
{
    public function insertCart(Request $request,$title,$product_code,$price,$slider_image)
    {

        // validate the data
        $this->validate($request, array(
                'quantity'         => 'required'
            ));

    	$cart = new Cart();
    	$cart->s_id = session()->getId();
    	$cart->product_code = $product_code;

        
        $column = 'product_code'; // This is the name of the column you wish to search
        $check = Cart::where($column , '=', $product_code)->get();
        // echo '<pre>';
        // print_r($check[0]['product_code']);
        // print_r($product_code);
        // exit;
        if(isset($check[0]['product_code']) && isset($check[0]['s_id'])){
            if(($check[0]['product_code'])==$product_code && (($check[0]['s_id'])==(session()->getId()))){
                return Redirect::back()->withErrors(['Product already added to the cart', 'The Message']);
            }
        }
    	$cart->product_name = $title;
    	$cart->price = $price;
    	$cart->quantity = $request->quantity;
    	$cart->image = $slider_image;
    	$cart->option2 = $request->option2;
    	$cart->option1 = $request->option1; 	
    	$cart->save();
        Session::flash('success', 'Product added to the cart');
        return Redirect::back();
    }

    public function showCart()
    {
        $randomize_product_sliders = Randomize_product_slider::all();
        $session_id = session()->getId();
        $column = 's_id'; // This is the name of the column you wish to search
        $cartproducts = Cart::where($column , '=', $session_id)->get();
        
        
        
         // echo '<pre>';
         //    print_r($total_products_count);
         //    exit;

        return view('cart')->withCartproducts($cartproducts)->withRandomize_product_sliders($randomize_product_sliders);
    }

    public function check_submit(Request $request)
    {
        //check which submit was clicked on
        if(Input::get('update')) {
            $this->updateCart($request); //if login then use this method
            return redirect('/cart');
        } elseif(Input::get('continue')) {
            //$this->Continue($request); //if register then use this method

        

            $input = $request->optionsRadios; 

           // dd($input);

        if($input == 'coupon'){
            return 'Coupon code feature will be added soon!!!';
        }else{
            return 'Estimate shipping & taxes feature will be added soon!!!';
        }

            
        }else{
            $this->showCheckOut($request); //if login then use this method
            return redirect('/checkout');
        }
    }

    public function updateCart(Request $request)
    {
       
        $inputs = $request->only(['quantity']);

        $checkbox_inputs = $request->only(['checkbox']);

        // echo '<pre>';
        // print_r($checkbox_inputs);
        // exit;
        $flag = 0;
        foreach ($checkbox_inputs as $checkbox_input){
        
            // echo $checkbox_input[0];
            // echo $checkbox_input[1];

            // exit;

            for($j= 0 ; $j < count($checkbox_input); $j++){

                $cart_entry = Cart::find($checkbox_input[$j]);
                $cart_entry->delete();

            }
            //count($checkbox_input);exit;


            //$checkbox_input[$flag];

           
        
            ++$flag;

        }


        //exit;

        $array = array();
        $i = 0 ;
        foreach ($inputs as $input){
            $i++;
            $array[$i] = $input;
        }
        $i = 0 ;
        //dd($request->input('quantity.0'));
        $session_id = session()->getId();
        $column = 's_id'; // This is the name of the column you wish to search
        $cartproducts = Cart::where($column , '=', $session_id)->get();
        foreach ($cartproducts as $cartproduct) {

            $cartproduct->quantity = $array[1][$i];
            ++$i;
            $cartproduct->save();
        }
        return redirect('/cart');
        //return view('cart')->withCartproducts($cartproducts);
        //dd($array[1][$i]);

        // $i = 0;
        // foreach ($cartproducts as $cartproduct) {
        //     $array[$i] = $category->name;
        // }
    }

    // public function Continue(Request $request)
    // {
    //     $inputs = $request->only(['optionsRadios']);
    //     if($request->input('optionsRadios.0') == 'coupon'){
    //         return;
    //     }
    // }

     public function showCheckOut()
    {
        return view('checkout');
    }

}