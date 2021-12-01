@php
    $baseUrl = config('app.base_url');
@endphp

@extends('layout.master')

@section('title')
    <title>Home page</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('home/home.css')}}">
@endsection

@section('js')
    <link rel="stylesheet" href="{{asset('home/home.js')}}">
@endsection

@section('content')
    {{--slider--}}
    <section id="slider">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#slider-carousel" data-slide-to="1"></li>
                            <li data-target="#slider-carousel" data-slide-to="2"></li>
                        </ol>

                        <div class="carousel-inner">
                            @foreach($sliders as $key => $slider)
                                <div class="item {{ $key == 0 ? 'active' : '' }}">
                                    <div class="col-sm-6">
                                        <h1><span>E</span>-SHOP</h1>
                                        <h2>{{$slider->name}}</h2>
                                        <p> {{$slider->description}}</p>
                                        <button type="button" class="btn btn-default get">Get it now</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="{{$baseUrl . $slider->image_path}}" class="girl img-responsive" alt="" />
                                        <img src="/eshopper/images/home/pricing.png"  class="pricing" alt="" />
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{--end-slider--}}

    <section>
        <div class="container">
            <div class="row">
                {{--left-slidebar--}}
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Category</h2>
                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                            @foreach($categorys as $category)
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            @if($category->categoryChildrent->count())
                                                <a data-toggle="collapse" data-parent="#accordian" href="#sportswear_{{$category->id}}">
                                                    <span class="badge pull-right">
                                                        <i class="fa fa-plus"></i>
                                                    </span>
                                                    {{$category->name}}
                                                </a>
                                            @else
                                                <a href="#">
                                                    <span class="badge pull-right">
                                                    </span>
                                                    {{$category->name}}
                                                </a>
                                            @endif
                                        </h4>
                                    </div>
                                    <div id="sportswear_{{$category->id}}" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                @foreach($category->categoryChildrent as $categoryChilrent)
                                                    <li>
                                                        <a href="{{ route('category.product',['slug'=>$categoryChilrent->slug,'id'=>$categoryChilrent->id])}}">
                                                            {{$categoryChilrent->name}}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div><!--/category-products-->

                    </div>
                </div>
                {{--end-left-slidebar--}}

                <div class="col-sm-9 padding-right">
                    <!--features_items-->
                    <div class="features_items">
                        <h2 class="title text-center">Sản phẩm</h2>
                        @foreach($products as $product)
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="{{$baseUrl . $product->feature_image_path}}" alt="" />
                                            <h2>{{number_format($product->price)}} VND</h2>
                                            <p>{{$product->name}}</p>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>{{number_format($product->price)}} VND</h2>
                                                <p>{{$product->name}}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="choose">
                                        <ul class="nav nav-pills nav-justified">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <!--end-features_items-->
                </div>
                <div class="col-sm-12">
                    <!--category-tab-->
                    <div class="category-tab">
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                @foreach($categorys as $indexCategory => $categoryItem)
                                    <li class="{{$indexCategory == 0 ? 'active':''}}">
                                        <a href="#category_tab_{{$categoryItem->id}}" data-toggle="tab">
                                            {{$categoryItem->name}}
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                        <div class="tab-content ">
                            @foreach($categorys as $indexCategoryProduct => $categoryItemProduct)
                                <div class="tab-pane fade {{$indexCategoryProduct == 0 ? 'active in':''}} "
                                     id="category_tab_{{$categoryItemProduct->id}}" >
                                    @foreach($categoryItemProduct->products as $productItemTabs)
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products" style="height: 350px">
                                                    <div class="productinfo text-center">
                                                        <img src="{{$baseUrl . $productItemTabs->feature_image_path}}" alt="" />
                                                        <p class="price">{{$productItemTabs->price}} VND</p>
                                                        <p>{{$productItemTabs->name}}</p>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <!--end-category-tab-->

                    <!--recommended_items-->
                    <div class="recommended_items"><!--recommended_items-->
                        <h2 class="title text-center">recommended items</h2>

                        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                @foreach($productsRecommend as $keyRecommend=>$productsRecommendItem)
                                    @if($keyRecommend % 3 ==0)
                                        <div class="item {{$keyRecommend === 0 ? 'active' : ''}}">
                                            @endif
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="{{$baseUrl . $productsRecommendItem->feature_image_path}}" alt="" />
                                                            <h2>{{number_format($productsRecommendItem->price)}} VND</h2>
                                                            <p>{{$productsRecommendItem->name}}</p>
                                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            @if($keyRecommend % 3 == 2)
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                            <a class="left recommended-item-control"
                               href="#recommended-item-carousel"
                               data-slide="prev"
                                style="margin-left: -100%">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                    </div>
                    <!--end-recommended_items-->
                </div>
            </div>
        </div>



@endsection

