@extends('layouts.app')
<link rel="stylesheet" href="{{ URL::asset('css/css.css') }}">
@section('content')
<div style="display:none">{{ $id=0}}</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Профиль</div>

                <div class="card-body">
                <h1>{{ Auth::user()->name }}</h1>
                <h5>E-Mail: <span >{{Auth::user()->email}}</span></h5>
                <h5>Адрес: <span >{{Auth::user()->adress}}</span></h5>
                <h5>Номер телефона: <span >{{Auth::user()->phone_number}}</span></h5>
                <h5>Формуляр: <span >{{Auth::user()->library_card}}</span></h5>
                <br>
                <h3>Забронированные книги<h3>
                    <div >
                    
                     @foreach ($books as $booked) 
                                    @foreach ($booked as $book )
                                    <div id="{{$id++}}" class="book">
                                        <div class="both">
                                            <div class="img">
                                                @if(!$book->image)
                                                    <img src="{{asset('images/Err.jpg')}}">
                                                @else
                                                    <img src="{{asset($book->image)}}">
                                                @endif
                                            </div>
                                            <div class="text">
                                                <h6>
                                                    Автор: {{ $book->authors }};
                                                    Название: "{{ $book->name }}";
                                                    Издательство: {{ $book->publish }};
                                                    Дата выхода в печать: {{$book->date}}г;
                                                    Кол-во страниц: {{$book->pages}}.<br>
                                                    <booked-del-component :elem_id="{{$id}}" :book="{{$book->id}}" :user_id="{{Auth::user()->id}}"></booked-del-component>
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                     @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
