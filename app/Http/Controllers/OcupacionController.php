<?php

namespace App\Http\Controllers;

use App\Ocupacion;
use Illuminate\Http\Request;

class OcupacionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         return view('ocupaciones.index',['ocupaciones' => Ocupacion::whereStatusActive()]);
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
        $ocupacions = new Ocupacion;
        $ocupacions->nombre= $request->ocupacion;


         if ($ocupacions->save()) {
            $ocupacions_response = Ocupacion::all();
            return response()->json(['status' => true,'ocupaciones' => $ocupacions_response]);
        } else {
            return response()->json(['status' => false]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Ocupacion  $ocupacion
     * @return \Illuminate\Http\Response
     */
    public function show(Ocupacion $ocupacion)
    {
        //
    }

    public function search(Request $request, Ocupacion $ocupacion)
    {
        return response()->json($ocupacion);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Ocupacion  $ocupacion
     * @return \Illuminate\Http\Response
     */
    public function edit(Ocupacion $ocupacion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Ocupacion  $ocupacion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ocupacion $ocupacion)
    {
        $ocupacion->nombre = $request->nombre;

          if($ocupacion->save()){
            return back()->with('success', 'Se modifico la ocupacion exitósamente');
            
          }else{
            return back()->with('error', '¡Error!');
          }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Ocupacion  $ocupacion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ocupacion $ocupacion)
    {
        if (softDelete($ocupacion)) {
              return response()->json(['status' => true , 'response' => back()->with('success', 'Se elimino la ocupación exitósamente')]);
        }else{
             return response()->json(['status' => true , 'response' => back()->with('error', 'Oppss, ocurrio un error')]);
        }
    }
}
