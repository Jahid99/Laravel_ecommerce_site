<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Photo;

use App\site_info;

use App\Feature_product;

use App\Latest_product;

use App\Service;

use App\Manufacture;

class HomeController extends Controller
{
    

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }


    public function homepage()
    {
        $sliders = Photo::all();
        $feature_products = Feature_product::all();
        $latest_products = Latest_product::all();
        $services = Service::all();
        $manufactures = Manufacture::all();
        return view('index')->withSlider_infos($sliders)->withFeature_products($feature_products)->withLatest_products($latest_products)->withServices($services)->withManufactures($manufactures);
    }

}
