<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Billing_detail;

use App\Ordered_product;

use App\Cart;

use Illuminate\Support\Facades\Input;

class CheckoutController extends Controller
{
   
    public function billing_details(Request $request)
    {
        // validate the data
        $this->validate($request, array(
                'first_name'         => 'required',
                'last_name'          => 'required',
                'email_address'   => 'required',
                'telephone'          => 'required',
                'fax'          => 'required',
                'company'          => 'required',
                'company_id'          => 'required',
                'address_1'          => 'required',
                'address_2'          => 'required',
                'city'          => 'required',
                'post_code'          => 'required',
                'country'          => 'required',
                'region'          => 'required'
            ));
        $billing_detail = new Billing_detail();
        $billing_detail->first_name = $request->first_name;
        $billing_detail->last_name = $request->last_name;
        $billing_detail->email_address = $request->email_address;
        $billing_detail->telephone = $request->telephone;
        $billing_detail->fax = $request->fax;
        $billing_detail->company = $request->company;
        $billing_detail->company_id = $request->company_id;
        $billing_detail->address_1 = $request->address_1;
        $billing_detail->address_2 = $request->address_2;
        $billing_detail->city = $request->city;
        $billing_detail->post_code = $request->post_code;
        $billing_detail->country = $request->country;
        $billing_detail->region = $request->region;
        $billing_detail->comments = $request->comments;
        $billing_detail->s_id = session()->getId();
        $billing_detail->save();
        
        $session_id = session()->getId();
        $column = 's_id'; // This is the name of the column you wish to search
        $cartproducts = Cart::where($column , '=', $session_id)->get();
        foreach($cartproducts as $cartproduct)

        {
	         $ordered_product = new Ordered_product();
	         $ordered_product->s_id = session()->getId();
	    	 $ordered_product->product_code = $cartproduct->product_code;
	    	 $ordered_product->product_name = $cartproduct->product_name;
	    	 $ordered_product->price = $cartproduct->price;
	    	 $ordered_product->quantity = $cartproduct->quantity;
	    	 $ordered_product->image = $cartproduct->image;
	    	 $ordered_product->save();
        }

         return view('order_confirmed');
    }
}
