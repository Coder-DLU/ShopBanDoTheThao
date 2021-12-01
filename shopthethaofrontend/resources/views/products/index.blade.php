@php
    $baseUrl = config('app.base_url');
@endphp

@extends('layout.master')

@section('title')
    <title>Product page</title>
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
                <div class="col-sm-12 padding-right">
                    <!--features_items-->
                    <div class="features_items">
                        <h2 class="title text-center">Sản phẩm</h2>
                        @foreach($products as $product)
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center" style="height: 320px;">
                                            <img src="{{$baseUrl . $product->feature_image_path}}" alt="" />
                                            <h2>{{number_format($product->price)}} VND</h2>
                                            <p>{{$product->name}}</p>
                                            <a href="#"
                                               data-url="{{route('addToCart',['id' => $product->id]) }}"
                                               class="btn btn-default add_to_cart">
                                                <i class="fa fa-shopping-cart"></i>
                                                Add to cart
                                            </a>
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
            </div>
        </div>
    </section>


@endsection
