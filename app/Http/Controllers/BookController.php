<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use Spatie\Searchable\Searchable;
use Spatie\Searchable\SearchResult; 

class BookController extends Controller
{
    public function index(){
        $books = Book::all();
        return view('books.index', compact('books'));
    }

    public function search(Request $request){
        try{
            $validated = $request->validate([
                'title' => 'request|max:255',
            ]);

            $search = $request->get('search');
            $books = Book::where('title', 'like', '%' . $search . '%')->get();
            return view('books.index', compact('books'));
        }catch (ValidationException $e) {
            return redirect()->back()->withErrors($e->errors());
        }
    }
}
