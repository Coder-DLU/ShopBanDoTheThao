<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index($slug,$categoryId)
    {
        $categorys = Category::where('parent_id', 0)->latest()->get();
        $categorysLimit = Category::where('parent_id',0)->take(3)->get();
        $products = Product::where('category_id',$categoryId)->paginate(12);
        return view('product.category.list',compact('categorysLimit','products','categorys'));
    }
}
