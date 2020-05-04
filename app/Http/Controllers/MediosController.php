<?php

namespace App\Http\Controllers;

use App\Medios;
use Illuminate\Http\Request;

class MediosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('medios.index',['medios' => Medios::whereStatusActive()]);
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
        $medio = new Medios;
        $medio->nombre = $request->nombre;

        if ($medio->save()) {
            $medios = Medios::all();
            return response()->json(['status' => true,'medios' => $medios]);
        } else {
            return response()->json(['status' => false]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Medios  $medios
     * @return \Illuminate\Http\Response
     */
    public function show(Medios $medios)
    {
        //
    }

    public function search(Request $request, Medios $medios)
    {
        return response()->json($medios);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Medios  $medios
     * @return \Illuminate\Http\Response
     */
    public function edit(Medios $medios)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Medios  $medios
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
          $medios = Medios::findOrfail($id);

          $medios->nombre = $request->nombre;

          if($medios->save()){
            return back()->with('success', 'Se modifico el medio exitósamente');
            
          }else{
            return back()->with('error', '¡Error!');
          }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Medios  $medios
     * @return \Illuminate\Http\Response
     */
    public function destroy(Medios $medio)
    {
        

        if (softDelete($medio)) {
              return response()->json(['status' => true , 'response' => back()->with('success', 'Se elimino el medio exitósamente')]);
        }else{
             return response()->json(['status' => true , 'response' => back()->with('error', 'Oppss, ocurrio un error')]);
        }
    }
}
