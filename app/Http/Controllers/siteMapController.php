<?php

namespace sayCouture\Http\Controllers;

use Illuminate\Http\Request;
use sayCouture\Http\Controllers\Controller;
use Spatie\Sitemap\SitemapGenerator;

class siteMapController extends Controller
{
    
    /**
    * Comment...............
    *
    * @param  Class param
    * @return void
    */
    public function index(){
        SitemapGenerator::create(config('app.url'))->writeToFile(public_path("sitemap.xml"));
    }
}
