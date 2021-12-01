<?php
namespace App\Http\Controllers;

use App\Category;
use App\Product;
use App\Slider;
use Illuminate\Http\Request;


class ProductController extends Controller
{

    public function index(){
        $sliders = Slider::latest()->get();
        $categorys = Category::where('parent_id', 0)->latest()->get();
        $products = Product::latest()->get();
        $productsRecommend = Product::latest()->take(12)->get();
        return view('products.index',compact('sliders','categorys','products','productsRecommend','categorysLimit'));
    }
    public function addToCart($id){
//       session()->flush('cart');

        $product = Product::find($id);
        $cart = session()->get('cart');
        if (isset($cart[$id])){
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + 1;
        }else{
            $cart[$id]= [
                'name'=> $product->name,
                'price'=> $product->price,
                'quantity'=> 1,
                'image'=> $product->feature_image_path,
            ];
        }
        session()->put('cart', $cart);
        return response()->json([
            'code'=> 200,
            'message'=>'success'
        ],200);
    }
    public function showCart(){
        $carts = session()->get('cart');
        return view('products.cart',compact('carts'));
    }
    public function updateCart(Request $request){
        if ($request->id && $request->quantity){
            $carts = session()->get('cart');
            $carts[$request->id]['quantity'] = $request->quantity;
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cartComponent = view('products.components.cart_component',compact('carts'))->render();
            return response()->json(['cart_component' => $cartComponent, 'code'=> 200],200);
        }
    }
    public function deleteCart(Request $request){
        if ($request->id){
            $carts = session()->get('cart');
            unset($carts[$request->id]);
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cartComponent = view('products.components.cart_component',compact('carts'))->render();
            return response()->json(['cart_component' => $cartComponent, 'code'=> 200],200);
        }
    }

    public function search(Request $request){
        $sliders = Slider::latest()->get();
        $categorysLimit = Category::where('parent_id',0)->take(3)->get();
        //search
        $search_key = $request->input('search');
        $products = Product::where('name','like', "%$search_key%")->get();
        return view('products.search',compact('sliders','products','categorysLimit'));
    }
}
