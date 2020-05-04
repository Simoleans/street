<?php

namespace App\Http\Controllers;

use App\ConvocatoriaMeta;
use Illuminate\Http\Request;
use App\Convocatoria;
use App\ConvocatoriaPapel;

class ConvocatoriaMetaController extends Controller
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
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

         $array = $request->except(['_token','titulo','client_id','fecha','competencia','nombre_rol','descripcion_rol','edad_hasta','edad_desde','sexo','presupuesto_papel']);

         $c = 0; // contador 

      
        $convocatoria = new Convocatoria;
        $convocatoria->titulo =  $request->titulo;
        $convocatoria->client_id =  $request->client_id;
        $convocatoria->fecha = $request->fecha;

        

        if ($convocatoria->save()) { //save convocatoria
            foreach ($array as $key => $value) {  

                 setMeta('convocatoria',$key,$convocatoria->id,$value);
             }
             
            if ($request->competencia != null) {

                foreach ($request->competencia as $compe) {

                    setMeta('convocatoria','competencia',$convocatoria->id,$compe,'multiple');
                 }
            }

           if ($request->nombre_rol != null) { // si no existe nombre rol, no existe ningun papel/rol

                foreach ($request->nombre_rol as $key => $value) { // recorrer array

                    $convopapel = new ConvocatoriaPapel;
                    $convopapel->name =  $value;
                    $convopapel->convocatoria_id =  $convocatoria->id;

                    if ($convopapel->save())
                    {
                        $convopapel->saveMetasPapel($request,$key,$value,$convopapel->id); // funcion guardar papeles
                        $c++;
                    }else{
                        $c--;
                    }                  
                    
                 }
            }   

           if ($c == count($request->nombre_rol)) { // si el contador es igual a las cantidad de papeles

               return redirect()->route('convocatoria.index')->with('success', ' Se registro  exitósamente');
           }

            
        }//fin save convocatoria
       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ConvocatoriaMeta  $convocatoriaMeta
     * @return \Illuminate\Http\Response
     */
    public function show(ConvocatoriaMeta $convocatoriaMeta)
    {
            }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ConvocatoriaMeta  $convocatoriaMeta
     * @return \Illuminate\Http\Response
     */
    public function edit(ConvocatoriaMeta $convocatoriaMeta)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ConvocatoriaMeta  $convocatoriaMeta
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ConvocatoriaMeta $convocatoriaMeta)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ConvocatoriaMeta  $convocatoriaMeta
     * @return \Illuminate\Http\Response
     */
    public function destroy(ConvocatoriaMeta $convocatoriaMeta)
    {
        //
    }
}
