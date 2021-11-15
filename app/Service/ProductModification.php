<?php
namespace App\Service;
use Rap2hpoutre\FastExcel\FastExcel;
use Illuminate\Support\Collection;
use Validator;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductVariant;
use App\Models\ProductVariantPrice;
use App\Models\Variant;

class ProductModification
{

	
	public function __construct(){
		
	}	
	
	
	public function store(){	
		
		$request = request();
		//dd($request->product_variant);
		
		/*$product = Product::create($request->only('title', 'sku', 'description'));
        if ($product) {
            if ($request->hasFile('product_image')) {
                $files = $request->file('product_image');
                foreach ($files as $file) {
                    $imagesPath = $file->store('public');
                    $imagesName = (explode('/', $imagesPath))[1];
                    $host = $_SERVER['HTTP_HOST'];
                    $protocol = $_SERVER['PROTOCOL'] = isset($_SERVER['HTTPS']) && !empty($_SERVER['HTTPS']) ? 'https://' : 'http://';

                    $data = [];
                    $data['product_id '] = $product->id;
                    $data['thumbnail '] = 1;
                    $data['file_path'] = $protocol . $host . "/public/storage/" . $imagesName;
                    ProductImage::create($data);
                }

            }
        }
        if ($request->product_variant) {
            $variants = $request->product_variant;

            if($variants!=""){
                foreach ($variants as $key => $variant) {
                    $tags = $variants[$key]['tags'];
                    if($variants[$key]!=""){
                        foreach ($tags as $k => $tag) {
                            if(isset($variants[$key]['option']) && $variants[$key]['option'] > 0){
                                $vdata['variant'] = $tags[$k];
                                $vdata['variant_id'] = $variants[$key]['option'];
                                $vdata['product_id'] = $product->id;                   
                                ProductVariant::insert($vdata);
                                $lastentryid =  DB::getPdo()->lastInsertId();
                                

                                if ($request->product_variant_prices) {
                                    $pvPrices = $request->product_variant_prices;
                                    if(count($pvPrices) > 0){
                                        foreach ($pvPrices as $key => $pvPrice) {
                                            if($pvPrice!=""){
                                                $variationTitle = rtrim($pvPrices[$key]['title'],'/');
                                                $explodearray = count(explode('/',$variationTitle));                            


                                                list($v1, $v2, $v3) = explode('/',$variationTitle);
                                                if($tags[$k] == $v1){
                                                    $variationoneid = $lastentryid;
                                                }


                                                if($pvPrices[$key]!=""){
                                                    $vpdata['product_variant_one'] = $variationoneid;
                                                    $vpdata['product_variant_two'] = $variationoneid;
                                                    $vpdata['product_variant_three'] = $variationoneid;
                                                    $vpdata['price'] = $pvPrices[$key]['price']; 
                                                    $vpdata['stock'] = $pvPrices[$key]['stock']; 
                                                    $vpdata['product_id'] = 1;                   
                                                    ProductVariantPrice::insert($vpdata);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

        }*/
	}
	
	
}