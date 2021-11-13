<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductVariant;
use App\Models\ProductVariantPrice;
use App\Models\Variant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\View\Components\FlashMessages;
use App\Service\ProductFilter;
use App\Service\ProductModification;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */
	 
	 use FlashMessages;
	 
    public function index(Request $request, ProductFilter $product)
    {				
		$opject = $product->getData();
		$products = $opject['products'];
		$variations = $opject['variations'];
        return view('products.index',compact('products','variations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function create()
    {
        $variants = Variant::all();
        return view('products.create', compact('variants'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(ProductModification $product)
    {
       $product->store();

    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function show($product)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $variants = Variant::all();
        return view('products.edit', compact('variants'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }
	
	
		//use App\Models\ProductImage;
		//use App\Models\ProductVariant;
		//use App\Models\ProductVariantPrice;

	public function copyListing($id){
		$skus = $invoice_number = rand(100, 999).$id;
		$products = Product::find($id);
		$newproduct = $products->replicate();
		$newproduct->sku = $skus;
		$newproduct->save();
		$lastProID = $newproduct->id;

		$productsGallery = ProductImage::where('product_id',$id)->first();
		if($productsGallery!=""){
			$newproductG = $productsGallery->replicate();
			$newproductG->product_id = $lastProID;
			$newproductG->save();
		}

		$productsVariant = ProductVariant::where('product_id',$id)->first();
		$newproductV = $productsVariant->replicate();
		$newproductV->product_id = $lastProID;
		$newproductV->save();
		
		$productsVariantPrice = ProductVariantPrice::where('product_id',$id)->first();
		$newproductVP = $productsVariantPrice->replicate();
		$newproductVP->product_id = $lastProID;
		$newproductVP->save();

		self::message('success', 'Data Added successfully Done');
        return redirect()->back();
   }
}
