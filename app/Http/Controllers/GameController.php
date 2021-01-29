<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class GameController extends Controller
{
    public function show() {
        dd(User::all());
        return view('tictactoe');
    }
}
