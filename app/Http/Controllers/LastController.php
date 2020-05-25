<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Books;

class LastController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $req){
        $date = date("Y-m");
        $date = "%" . (string)$date . "%";
        $books = Books::where('created_at',"LIKE", $date)->paginate(5);
        return view('/last',compact('books'));
    }
}
