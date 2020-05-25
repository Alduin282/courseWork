@extends('layouts.app')

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
                                    <div data-id="{{ $book->id }}" style="border:black solid 1px">
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
                                    <br>
                            @endforeach
                            </div>
                    </div> 
                    <div>{{$books->links()}}</div>
            </div>
        </div>
    </div>
</div>
@endsection
