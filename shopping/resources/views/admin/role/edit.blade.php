<!-- Stored in resources/views/child.blade.php -->

@extends('layouts.admin')

@section('title')
    <title>Trang chủ</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('admins/role/add/add.css')}}">
@endsection

@section('js')
    <script src="{{asset('admins/role/add/add.js')}}"></script>
@endsection

@section('content')
    <div class="content-wrapper">
        @include('partials.content-header',['name'=>'Roles', 'key'=>'Edit'])
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <form action="{{ route('roles.update',['id'=>$role->id]) }}" method="post" enctype="multipart/form-data" style="width: 100%">
                        <div class="col-md-12">
                            @csrf
                            <div class="form-group">
                                <label>Tên vai trò</label>
                                <input class="form-control "
                                       name="name"
                                       placeholder="Nhập tên vai trò"
                                       value="{{$role->name}}"
                                >

                            </div>
                            <div class="form-group">
                                <label>Mô tả vai trò</label>
                                <textarea name="display_name"
                                          rows="4"
                                          class="form-control "
                                > {{$role->display_name}}</textarea>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <label>
                                        <input type="checkbox" class="checkall">
                                        checkall
                                    </label>
                                </div>
                                @foreach($permissionsParent as $permissionsParentItem)
                                <div class="card boder-primary mb-3 col-md-12">
                                    <div class="card-header">
                                        <label>
                                            <input type="checkbox" value="" class="checkbox_wapper">
                                        </label>
                                        Module {{ $permissionsParentItem->name }}
                                    </div>
                                    <div class="row">
                                        @foreach($permissionsParentItem->permissionChildrent as $permissionChildrentItem)
                                            <div class="card-body text-primary col-md-3">
                                                <h5 class="card-title">
                                                    <label>
                                                        <input type="checkbox" name="permission_id[]"
                                                               {{$permissionsChecked->contains('id',$permissionChildrentItem->id) ?'checked' : ''}}
                                                               class="checkbox_childrent"
                                                               value="{{$permissionChildrentItem->id}}">
                                                    </label>
                                                    {{$permissionChildrentItem->name}}
                                                </h5>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


