<?php

namespace App\Http\Controllers;
use App\Books;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    


    public function index(Request $req){
        
        $author = "%" . (string)$req->authors . "%";
        $name = "%" . (string)$req->name . "%";
        if(!$req->authors) $author = "fkasdjfkejqtjkljfkdasjnfdskafjefasdasfkjeb0";
        if(!$req->name) $name = "fkasdjfkejqtjkljfkdasjnfdskafjefasdasfkjeb0";
        if($req->select == "and"){
            $count = Books::where('authors',"LIKE", $author)->where('name',"LIKE",$name)->count();
            $books = Books::where('authors',"LIKE", $author)->where('name',"LIKE",$name)->paginate(5);
        }else{
            $count = Books::where('authors',"LIKE", $author)->orWhere('name',"LIKE",$name)->count();
            $books = Books::where('authors',"LIKE", $author)->orWhere('name',"LIKE",$name)->paginate(5);
        }
        return view('/search-results',compact('books','req',"count"));
    }
}
