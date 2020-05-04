<?php

namespace App\Http\Controllers;

use App\User;
use App\Convocatoria;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        $convocatoria = Convocatoria::where('status',1)->get();
        
        return view('dashboard', ['users' => User::all(),'convocatoria' => $convocatoria]);
    }

    public function login(Request $request)
    {

        /*----------- LOGIN MANUAL , MODIFICABLE ----------*/
        $this->validate($request, [
            'email'    => 'required|email',
            'password' => 'required',
        ]);

        if (Auth::attempt($request->only(['email', 'password']))) {
            return redirect('/')->with('login', ''.Auth::user()->fullName().' ¡Bienvenido a StreetCasting!');
        } else {
            return redirect()->route('landing')->with('warning', 'No pudo iniciar sesión, ¡Revise sus credenciales!');
        }
    }

    public function logout()
    {
        /*---- funcion de salir/logout/cerrar sesion --*/
        Auth::logout();
        return redirect('/')->with('warning', '¡Cerraste sesión correctamente!, vuelve pronto.');
    }
}
