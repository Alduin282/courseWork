@extends('layouts.app')
<link rel="stylesheet" href="{{ URL::asset('css/css.css') }}">
@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Электронный каталог</div>

                <div class="card-body" id="userid">
                    <h1>Последние поступления</h1>
                    <div id = 'app'>
                            <div>
                            @foreach ($books as $book) 
                                    <div data-id="{{ $book->id }}" class="book">
                                        <div class="both">
                                            <div class="img">
                                                    @if(!$book->image)
                                                        <img src="{{asset('images/Err.jpg')}}">
                                                    @else
                                                        <img src="{{asset($book->image)}}">
                                                    @endif
                                            </div>
                                            <div class="text">
                                            Автор: {{ $book->authors }};
                                            Название: "{{ $book->name }}";
                                            Издательство: {{ $book->publish }};
                                            Свободных копий: {{ $book->count }};
                                            Дата выхода в печать: {{$book->date}}г;
                                            Кол-во страниц: {{$book->pages}}.<br>
                                            <booked-component :book="{{$book->id}}" 
                                                            :user_id="{{Auth::user()->id}}" 
                                                            :count="{{$book->count}}" ></booked-component>
                                            </div>
                                        </div>
                                    </div>
                            @endforeach
                            </div>
                    </div> 
                    <div>{{$books->links()}}</div>
            </div>
        </div>
    </div>
</div>
@endsection
