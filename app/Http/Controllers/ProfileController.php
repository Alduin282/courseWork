<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booked;
use Illuminate\Support\Facades\Auth;
use App\Books;

class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {   
        $id = Auth::user()->id;
        
        $booked = Booked::where("user_id","=",$id)->pluck('book_id');

        
        
        $books = collect([]);
        foreach($booked as $book_id){
            $books->push(Books::where("id","=",$book_id)->get());
        }
        
        return view('/profile',compact('books'));
    }
}
