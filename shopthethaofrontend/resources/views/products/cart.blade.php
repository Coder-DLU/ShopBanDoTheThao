@php
    $baseUrl = config('app.base_url');
@endphp

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>show cart</title>
</head>
<body>
<div class="cart_wrapper">

    <div class="cart" data-url="{{route('deleteCart')}}">
        <div class="container">
            <div class="row">
                <table class="table update_cart_url" data-url="{{route('updateCart')}}">
                    <h2 style="margin-top: 50px; margin-bottom: 20px">Giỏ hàng của tôi</h2>
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Ảnh sản phẩm</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Giá sản phẩm</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Tổng tiền</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @php
                        $total = 0;
                    @endphp
                    @foreach($carts as $id => $cartItem)
                        @php
                            $total += $cartItem['price'] * $cartItem['quantity'];
                        @endphp
                        <tr>
                            <th scope="row">{{ $id }}</th>
                            <td>
                                <img style="width: 100px; height: 100px;object-fit: contain"
                                     src="{{ $baseUrl .$cartItem['image'] }}" alt="">
                            </td>
                            <td>{{ $cartItem['name'] }}</td>
                            <td>{{ number_format($cartItem['price']) }} VND</td>
                            <td>
                                <input type="number" value="{{$cartItem['quantity']}}" min="1" class="quantity">
                            </td>
                            <td>{{ number_format($cartItem['price'] * $cartItem['quantity']) }} VND</td>
                            <td>
                                <a href="" data-id="{{$id}}" class="btn btn-primary cart_update">Cập nhật</a>
                                <a href=""
                                   data-id="{{$id}}"
                                   class="btn btn-danger cart_delete">Xóa</a>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>

                <div class="col-md-12">
                    <h2>Tổng: {{ number_format($total) }} VND</h2>
                    <button class="btn btn-danger">
                        <a  style="color: black;text-decoration: none"
                            href="{{route("product.index")}}">Xem sản Phẩm</a>
                    </button>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script>
    function cartUpdate(event) {
        event.preventDefault();
        let urlUpdateCart = $('.update_cart_url').data('url');
        let id = $(this).data('id');
        let quantity = $(this).parents('tr').find('input.quantity').val();
        $.ajax({
            type: "GET",
            url: urlUpdateCart,
            data: {id: id,quantity: quantity},
            success: function (data) {
                if(data.code == 200){
                    $('.cart_wrapper').html(data.cart_component);
                    alert('Cập nhật thành công');
                }
            },
            error: function () {

            }
        });
    }
    function cartDelete(event){
        event.preventDefault();
        let urlDelete = $('.cart').data('url');
        let id = $(this).data('id');
        $.ajax({
            type: "GET",
            url: urlDelete,
            data: {id: id},
            success: function (data) {
                if(data.code == 200){
                    $('.cart_wrapper').html(data.cart_component);
                    alert('Xóa thành công');
                }
            },
            error: function () {

            }
        });
    }
    $(function () {
        $(document).on('click','.cart_update',cartUpdate);
        $(document).on('click','.cart_delete',cartDelete);
    })
</script>
</body>
</html>
