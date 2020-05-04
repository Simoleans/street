<?php

namespace App\Http\Controllers;

use App\Productora;
use Illuminate\Http\Request;

class ProductoraController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('productora.index',['productoras' => Productora::whereStatusActive()]);
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
        $productora = new Productora;
        $productora->nombre = $request->nombre;

        if ($productora->save()) {
            $productoras = Productora::all();
            return response()->json(['status' => true,'productoras' => $productoras]);
        } else {
            return response()->json(['status' => false]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\productora  $productora
     * @return \Illuminate\Http\Response
     */
    public function show(productora $productora)
    {
        //
    }

    public function search(Request $request, Productora $productora)
    {
        return response()->json($productora);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\productora  $productora
     * @return \Illuminate\Http\Response
     */
    public function edit(productora $productora)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\productora  $productora
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, productora $productora)
    {
        //dd($request->all(),$ocio);
          $productora->nombre = $request->nombre;

          if($productora->save()){
            return back()->with('success', 'Se modifico la productora exitósamente');
            
          }else{
            return back()->with('error', '¡Error!');
          }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\productora  $productora
     * @return \Illuminate\Http\Response
     */
    public function destroy(productora $productora)
    {
        if (softDelete($productora)) {
              return response()->json(['status' => true , 'response' => back()->with('success', 'Se elimino la productora exitósamente')]);
        }else{
             return response()->json(['status' => true , 'response' => back()->with('error', 'Oppss, ocurrio un error')]);
        }
    }
}
