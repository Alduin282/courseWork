<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Электронный каталог</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
              
                margin: 0;
            }

            .full-height {
              
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                position:relative;
                margin:20px;
                margin-top:50px;
                width:50%;
                
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
   
        <div id = "app">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Поиск</a>
                    @else
                        <a href="{{ route('login') }}">Авторизация</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Регистрация</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                    <h1>Электронный каталог</h1>
                    <h4>
                    Как забронировать книгу?<br>
                    1)Чтобы воспользоваться поиском нужно авторизирваться\зарегестрироваться,
                    для этого нажмите "Регистрация"\"авторизация" в левом верхнем углу экрана <br>
                    2)Далее найти нужное вам произведение с помощью поиска, впишите автора или название в соответствующую графу и нажмите "поиск" <br>
                    3)Нашли нужную книгу ? Нажмите на "забронировать" , на следующий день книга уже будет ждать Вас в библиотеке <br>
                    4)Управление забронированными книгами можно осуществлять из страницы поиска, для этого нажмите на ваше имя вверху , а затем "профиль"<br>
                    </h4> 
                    <h3>По всем вопросам обращайтесь по телефону: <span style="color:blue">89005553535</span></h3>
                    
            </div>
        </div>
        
    </body>
</html>
