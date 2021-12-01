<!-- Stored in resources/views/layouts/app.blade.php -->

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    @yield('title')
    <title>Home | E-Shopper</title>
    <link href="{{asset('eshopper/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('eshopper/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('eshopper/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{asset('eshopper/css/price-range.css')}}" rel="stylesheet">
    <link href="{{asset('eshopper/css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('eshopper/css/main.css')}}" rel="stylesheet">
    @yield('css')
</head>
<body>
    {{--header--}}
    @include('layout.header')
    {{--end-header--}}

    {{--home--}}
    @yield('content')
    {{--end-home--}}

    {{--footer--}}
    @include('layout.footer')
    {{--end-footer--}}

<script src="{{asset('eshopper/js/jquery.js')}}"></script>
<script src="{{asset('eshopper/js/bootstrap.min.js')}}"></script>
<script src="{{asset('eshopper/js/jquery.scrollUp.min.js')}}"></script>
<script src="{{asset('eshopper/js/price-range.js')}}"></script>
<script src="{{asset('eshopper/js/jquery.prettyPhoto.js')}}"></script>
<script src="{{asset('eshopper/js/main.js ')}}"></script>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
        function addToCart(event) {
            event.preventDefault();
            let urlCart = $(this).data('url');
            $.ajax({
                type: "GET",
                url:urlCart,
                dataType: 'json',
                success: function (data) {
                    if(data.code == 200){
                        alert('Thêm sản phẩm vào giỏ hàng thành công!')
                    }
                },
                error:function () {

                }
            });
        };
        $(function () {
            $('.add_to_cart').on('click', addToCart);
        })
    </script>
@yield('js')
</body>

</html>
