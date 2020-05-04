<?php

namespace App\Http\Controllers;

use App\ConvocatoriaUser;
use Illuminate\Http\Request;

class ConvocatoriaUserController extends Controller
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
     * @param  \App\ConvocatoriaUser  $convocatoriaUser
     * @return \Illuminate\Http\Response
     */
    public function show(ConvocatoriaUser $convocatoriaUser)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ConvocatoriaUser  $convocatoriaUser
     * @return \Illuminate\Http\Response
     */
    public function edit(ConvocatoriaUser $convocatoriaUser)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ConvocatoriaUser  $convocatoriaUser
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ConvocatoriaUser $convouser)
    {
        $convouser->fill($request->all());
        $convouser->status = 0;

        if ($convouser->save()) {
            return redirect()->route('convopapel.show',['convopapel' => $convouser->papel])->with('success', ' Se registro  exitósamente');
        }else{
            return redirect()->route('convopapel.show',['convopapel' => $convouser->papel])->with('danger', 'Error');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ConvocatoriaUser  $convocatoriaUser
     * @return \Illuminate\Http\Response
     */
    public function destroy(ConvocatoriaUser $convocatoriaUser)
    {
        //
    }
}
