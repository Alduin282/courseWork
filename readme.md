Описание Приложения 
    1)Для использования поиска нужно зарегестрироваться и авторизироваться (функции "забыли пароль" пока нет ) , авторизация производится по email
![Иллюстрация к проекту](https://github.com/Alduin282/courseWork/raw/master/image/Capture.png)
    2)После авторизации появляется возможность поиска . Поиск очень прост,  производится по подстроке. С селектором "или" ищет по совпадению в первом или втором поле , а с "и" по двум сразу. 
![Иллюстрация к проекту](https://github.com/Alduin282/courseWork/raw/master/image/Capture1.png)
    3)Поиск переводит на страницу с результатами , где пользователь может забронировать литературу.Реализована пагинация по пять записей.(на скриншоте по 3). Бронь происходит без перезагрузки страницы ,реализовано с помощью Vue.js компонентов.
<p align="center"><img scr="https://avatars.mds.yandex.net/get-pdb/3000514/50018e4b-150e-4554-beb6-33a09c6badc1/s1200"></p>
<p align="center"><img scr="https://avatars.mds.yandex.net/get-pdb/2836229/6a0d34ac-32a1-4b69-a874-b805a7597c52/s1200"></p>
    4)Забронированные книги и данные пользователя можно посмотреть на странице профиля, там же можно и отменить бронь.(пагинации тут правда нет и ограничения по бронированию тоже).
<p align="center"><img scr="https://avatars.mds.yandex.net/get-pdb/2981700/82de7bdb-c87e-41c8-94e1-d5c1a44d35b5/s1200"></p>
    5)Так же есть страница "последние поступления" , на которую выводся книги за последний месяц. Там так же доступна бронь.
<p align="center"><img scr="https://avatars.mds.yandex.net/get-pdb/2821159/8b15153d-fc1a-4617-856a-b17276ea1143/s1200"></p>
    6)Ну и главная страница пока выглядит так
<p align="center"><img scr="https://avatars.mds.yandex.net/get-pdb/2710120/196f339b-e3c6-419f-91cc-e787d7f02136/s1200"></p>

<br><br><br>
<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[British Software Development](https://www.britishsoftware.co)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- [UserInsights](https://userinsights.com)
- [Fragrantica](https://www.fragrantica.com)
- [SOFTonSOFA](https://softonsofa.com/)
- [User10](https://user10.com)
- [Soumettre.fr](https://soumettre.fr/)
- [CodeBrisk](https://codebrisk.com)
- [1Forge](https://1forge.com)
- [TECPRESSO](https://tecpresso.co.jp/)
- [Runtime Converter](http://runtimeconverter.com/)
- [WebL'Agence](https://weblagence.com/)
- [Invoice Ninja](https://www.invoiceninja.com)
- [iMi digital](https://www.imi-digital.de/)
- [Earthlink](https://www.earthlink.ro/)
- [Steadfast Collective](https://steadfastcollective.com/)
- [We Are The Robots Inc.](https://watr.mx/)
- [Understand.io](https://www.understand.io/)
- [Abdel Elrafa](https://abdelelrafa.com)
- [Hyper Host](https://hyper.host)

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-source software licensed under the [MIT license](https://opensource.org/licenses/MIT).
