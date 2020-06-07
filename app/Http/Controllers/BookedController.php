<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booked;
use App\User;
use App\Books;

class BookedController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function delete(Request $req){
        $cheak = Booked::where("user_id","=",$req->user_id)->where("book_id","=",$req->book_id)->delete();
        $count = Books::where("id","=",$req->book_id)->pluck("count")["0"]+1;
        Books::where("id","=",$req->book_id)->update(["count" => $count]);
        $str = "Ваша бронь успешно убрана";
        return $str;
    }

    public function index(Request $req){

        $str = "Вы уже забронировали эту книгу";
        $cheak = Booked::where("user_id","=",$req->user_id)->where("book_id","=",$req->book_id)->pluck('id');
        if(!$cheak->isEmpty()) return $str;

        $booked = new Booked();
        $booked->book_id = $req->book_id;
        $booked->user_id = $req->user_id;
        $count = Books::where("id","=",$req->book_id)->pluck("count")["0"]-1;
        Books::where("id","=",$req->book_id)->update(["count" => $count]);

        $booked->save();
        $str="Книга успешно забронирована. Книга будет ждать вас 3 дня";
        return $str;
    }
}
