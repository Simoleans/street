<?php

namespace App\Http\Controllers;

use App\Idioma;
use Illuminate\Http\Request;

class IdiomaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         return view('idiomas.index',['idiomas' => Idioma::whereStatusActive()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $idiomas = new Idioma;
        $idiomas->idioma= $request->idioma;


         if ($idiomas->save()) {
            $idiomas_response = Idioma::all();
            return response()->json(['status' => true,'idioma' => $idiomas_response]);
        } else {
            return response()->json(['status' => false]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Idioma  $idioma
     * @return \Illuminate\Http\Response
     */
    public function show(Idioma $idioma)
    {
        //
    }

    public function search(Request $request, Idioma $idioma)
    {
        return response()->json($idioma);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Idioma  $idioma
     * @return \Illuminate\Http\Response
     */
    public function edit(Idioma $idioma)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Idioma  $idioma
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Idioma $idioma)
    {
          $idioma->idioma = $request->idioma;

          if($idioma->save()){
            return back()->with('success', 'Se modifico el idioma exitósamente');
            
          }else{
            return back()->with('error', '¡Error!');
          }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Idioma  $idioma
     * @return \Illuminate\Http\Response
     */
    public function destroy(Idioma $idioma)
    {
        if (softDelete($idioma)) {
              return response()->json(['status' => true , 'response' => back()->with('success', 'Se elimino el idioma exitósamente')]);
        }else{
             return response()->json(['status' => true , 'response' => back()->with('error', 'Oppss, ocurrio un error')]);
        }
    }
}
