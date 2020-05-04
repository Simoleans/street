<?php

namespace App\Http\Controllers;

use App\Ocio;
use Illuminate\Http\Request;

class OcioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('ocio.index',['ocios' => Ocio::whereStatusActive()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $ocios = new Ocio;
        $ocios->ocio= $request->ocio;


         if ($ocios->save()) {
            $ocios_response = Ocio::all();
            return response()->json(['status' => true,'frutas' => $ocios_response]);
        } else {
            return response()->json(['status' => false]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Ocio  $ocio
     * @return \Illuminate\Http\Response
     */
    public function show(Ocio $ocio)
    {
       
    }

    public function search(Request $request, Ocio $ocio)
    {
        return response()->json($ocio);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Ocio  $ocio
     * @return \Illuminate\Http\Response
     */
    public function edit(Ocio $ocio)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Ocio  $ocio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ocio $ocio)
    {
        //dd($request->all(),$ocio);
          $ocio->ocio = $request->ocio;

          if($ocio->save()){
            return back()->with('success', 'Se modifico el ocio exitósamente');
            
          }else{
            return back()->with('error', '¡Error!');
          }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Ocio  $ocio
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ocio $ocio)
    {
        if (softDelete($ocio)) {
              return response()->json(['status' => true , 'response' => back()->with('success', 'Se elimino el ocio exitósamente')]);
        }else{
             return response()->json(['status' => true , 'response' => back()->with('error', 'Oppss, ocurrio un error')]);
        }
    }
}
