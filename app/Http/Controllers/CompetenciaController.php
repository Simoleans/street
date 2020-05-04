<?php

namespace App\Http\Controllers;

use App\Competencia;
use Illuminate\Http\Request;

class CompetenciaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('competencia.index',['competencias' => Competencia::whereStatusActive()]);
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

    public function search(Request $request, Competencia $competencia)
    {
        return response()->json($competencia);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $competencia = new Competencia;
        $competencia->nombre = $request->nombre;

        if ($competencia->save()) {
            $competencias = Competencia::all();
            return response()->json(['status' => true,'competencias' => $competencias]);
        } else {
            return response()->json(['status' => false]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Competencia  $competencia
     * @return \Illuminate\Http\Response
     */
    public function show(Competencia $competencia)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Competencia  $competencia
     * @return \Illuminate\Http\Response
     */
    public function edit(Competencia $competencia)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Competencia  $competencia
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
          $competencia = Competencia::findOrfail($id);

          $competencia->nombre = $request->nombre;

          if($competencia->save()){
            return back()->with('success', 'Se modifico el medio exitósamente');
            
          }else{
            return back()->with('error', '¡Error!');
          }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Competencia  $competencia
     * @return \Illuminate\Http\Response
     */
    public function destroy(Competencia $competencium)
    {
     
        if (softDelete($competencium)) {
              return response()->json(['status' => true , 'response' => back()->with('success', 'Se elimino la competencia exitósamente')]);
        }else{
             return response()->json(['status' => true , 'response' => back()->with('error', 'Oppss, ocurrio un error')]);
        }
    }
}
