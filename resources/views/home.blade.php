@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Электронный каталог</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <h1>Поиск</h1>
                    <form method="POST" action="{{ route('search-form') }}" >
                        @csrf
                        <h5>Название</h5>
                        <input type="text" id="name" name='name'>
                        <br>
                        <br>
                        <select id="select" name='select'>
                            <option  value="and">И</option>
                            <option selected="" value="or">ИЛИ</option>
                        </select>
                        <h5>Автор</h5>
                        <input type="text" id='authors' name='authors'>
                        <input type="submit" value="Поиск">
                    </form>
                    <a href="{{ route('last') }}">Последние поступления</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
