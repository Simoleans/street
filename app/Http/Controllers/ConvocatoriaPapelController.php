<?php

namespace App\Http\Controllers;

use App\ConvocatoriaPapel;
use Illuminate\Http\Request;

class ConvocatoriaPapelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ConvocatoriaPapel  $convocatoriaPapel
     * @return \Illuminate\Http\Response
     */
    public function show(ConvocatoriaPapel $convopapel)
    {
        return view('papeles.view',['papel' => $convopapel]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ConvocatoriaPapel  $convocatoriaPapel
     * @return \Illuminate\Http\Response
     */
    public function edit(ConvocatoriaPapel $convocatoriaPapel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ConvocatoriaPapel  $convocatoriaPapel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ConvocatoriaPapel $convocatoriaPapel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ConvocatoriaPapel  $convocatoriaPapel
     * @return \Illuminate\Http\Response
     */
    public function destroy(ConvocatoriaPapel $convocatoriaPapel)
    {
        //
    }
}
