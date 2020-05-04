<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Nacionalidad;
use App\Convocatoria;
use App\User;
use App\Regiones;
use App\Client;
use App\Productora;
use App\Medios;
use App\Territorio;
use App\Competencia;
use App\ConvocatoriaCompetencia;
use Carbon\Carbon;

class ConvocatoriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $convocatorias = Convocatoria::all();
        return view('convocatorias.index',['convocatorias' => $convocatorias]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


        return view('convocatorias.create',['user' => User::all(),'nacionalidad' => Nacionalidad::all() , 'regiones' =>  Regiones::all(),'clientes' => Client::all(),'productoras' => Productora::all(), 'medios' => Medios::all(), 'territorios' => Territorio::all(),'competencias' => Competencia::all()]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request->all());
        $convocatoria = new Convocatoria;
        $convocatoria->fill($request->except(['nombre_rol','descripcion_rol','edad_desde','edad_hasta','sexo','presupuesto_papel','competencia_id']));
        $convocatoria->fecha_filmacion = Carbon::parse($request->fecha_filmacion);
        $convocatoria->fecha_prueba = Carbon::parse($request->fecha_prueba);
        $convocatoria->fecha_callback = Carbon::parse($request->fecha_callback);
        $convocatoria->fecha_ensayo = Carbon::parse($request->fecha_ensayo);
        $convocatoria->dia_casting = Carbon::parse($request->dia_casting);

        if ($convocatoria->save()) {
            if ($request->competencia_id != null) 
            {
               foreach ($request->competencia_id as $competencia) {
                    ConvocatoriaCompetencia::create(['convocatoria_id' => $convocatoria->id,
                                                     'competencia_id' => $competencia
                                                    ]);
                }
            }else{
                true;
            }

            if ($request->nombre_rol != null) { // si no existe nombre rol, no existe ningun papel/rol

                 for ($i = 0; $i < count($request->nombre_rol) ; $i++) {
                   
                        $convocatoria->saveMetasPapel($request,$i,$convocatoria->id); // funcion guardar papeles
                    
                 }
            }   
            
            return redirect()->route('convocatoria.index')->with('success', ' Se registro  exitósamente');
        } else {
            return redirect()->route('convocatoria.index')->with('danger', 'Error');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Convocatoria $convocatorium)
    {
       //$convocatoria = Convocatoria::findOrfail($id);

        //dd($convocatorium);

        return view('convocatorias.show',['convoc' => $convocatorium]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $convoc = Convocatoria::findOrfail($id);

        return view('convocatorias.edit',['c'=>$convoc]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $convocatoria = Convocatoria::findOrfail($id);
        $convocatoria->fill($request->all());

        if ($convocatoria->save()) {
            return redirect("convocatoria")->with([
                'flash_message' => 'Convocatoria modificada correctamente.',
                'flash_class'   => 'alert-success',
            ]);
        } else {
            return redirect("convocatoria")->with([
                'flash_message'   => 'Ha ocurrido un error.',
                'flash_class'     => 'alert-danger',
                'flash_important' => true,
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function status(Request $request)
    {
        $convocatoria = Convocatoria::findOrfail($request->id);

        $convocatoria->status = 0;

        if ($convocatoria->save()) {
            return response()->json('si');
        }
    }
}
