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
