<?php

namespace App\Http\Controllers;

use App\Territorio;
use Illuminate\Http\Request;

class TerritorioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('territorios.index',['territorios' => Territorio::whereStatusActive()]);
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
        $territorio = new Territorio;
        $territorio->nombre = $request->nombre;

        if ($territorio->save()) {
            $territorios = Territorio::all();
            return response()->json(['status' => true,'territorios' => $territorios]);
        } else {
            return response()->json(['status' => false]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Territorio  $territorio
     * @return \Illuminate\Http\Response
     */
    public function show(Territorio $territorio)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Territorio  $territorio
     * @return \Illuminate\Http\Response
     */
    public function edit(Territorio $territorio)
    {
        //
    }

    public function search(Request $request, Territorio $territorio)
    {
        return response()->json($territorio);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Territorio  $territorio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
          $territorio = Territorio::findOrfail($id);

          $territorio->nombre = $request->nombre;

          if($territorio->save()){
            return back()->with('success', 'Se modifico el medio exitósamente');
            
          }else{
            return back()->with('error', '¡Error!');
          }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Territorio  $territorio
     * @return \Illuminate\Http\Response
     */
    public function destroy(Territorio $territorio)
    {
       if (softDelete($territorio)) {
              return response()->json(['status' => true , 'response' => back()->with('success', 'Se elimino el territorio exitósamente')]);
        }else{
             return response()->json(['status' => true , 'response' => back()->with('error', 'Oppss, ocurrio un error')]);
        }
    }
}
