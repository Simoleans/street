<?php

namespace App\Http\Controllers;

use App\Api;
use App\Notification;
use App\ConvocatoriaUser;
use App\ConvocatoriaUserPago;
use App\Notice;
use App\User;

use Illuminate\Http\Request;

class ApiController extends Controller
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
     * @param  \App\Api  $api
     * @return \Illuminate\Http\Response
     */
    public function show(Api $api)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Api  $api
     * @return \Illuminate\Http\Response
     */
    public function edit(Api $api)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Api  $api
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Api $api)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Api  $api
     * @return \Illuminate\Http\Response
     */
    public function destroy(Api $api)
    {
        //
    }
    /**
     * Fin Notificaciones Acciones
     **/
    public function notificaciones(Request $request)
    {
        $limit=isset($request->limit) && $request->limit<=100?$request->limit:50;
        $user = $request->user();
        $notificaciones = Notification::where('user_id', $user->id)->where('status','!=',0)
        ->limit($limit)
        ->get();
        $response=['success'=>true,'data'=>$notificaciones];
        return response()->json($response, 201);
    }

    public function notificacionUpdate(Request $request)
    {
        $user = $request->user();
        $notificacion = Notification::find($request->id);
        if($notificacion->user_id == $user->id){
            $notificacion = Notification::where('id', $request->id)
            ->update(['status' => 2]);
            $response=['success'=>true,'data'=>[]];
        }else{
            $response=['success'=>false,'data'=>[]];
        }
        return response()->json($response, 201);
    }
    /**
     * Fin Notificaciones Acciones
     **/

    /**
     * Inicio Convocatorias Acciones
     **/
    public function convocatorias(Request $request)
    {
        $limit=isset($request->limit) && $request->limit<=100?$request->limit:50;
        $user = $request->user();
        $users = ConvocatoriaUser::where('user_id', $user->id)->where('convocatoria_users.status','!=',0)
        ->join('convocatorias','convocatorias.id','convocatoria_users.convocatoria_id')
        ->join('clients','clients.id','convocatorias.client_id')
        ->leftjoin('convocatoria_papels','convocatoria_papels.id','convocatoria_users.papel')
        ->select('convocatorias.titulo','convocatorias.fecha','convocatoria_papels.name as papel','convocatoria_users.confirmation','clients.name as client','clients.logo as client_logo')
        ->limit($limit)
        ->get();
        $response=['success'=>true,'data'=>$users];
        return response()->json($response, 201);
    }

    public function convocatoriaUpdate(Request $request)
    {
        $user = $request->user();
        $convocatoria = ConvocatoriaUser::find($request->id);
        if($convocatoria->user_id == $user->id){
            $convocatoria = ConvocatoriaUser::where('id', $request->id)
            ->update(['status' => 2]);
            $response=['success'=>true,'data'=>$convocatoria];
        }else{
            $response=['success'=>false,'data'=>[]];
        }
        return response()->json($response, 201);
    }
    /**
     * Fin Convocatorias Acciones
     **/

    /**
     * Inicio Pagos Acciones
     **/
    public function pagos(Request $request)
    {
        $limit=isset($request->limit) && $request->limit<=100?$request->limit:50;
        $user = $request->user();
        $pagos = ConvocatoriaUserPago::where('convocatoria_user_pagos.status','!=',0)
        ->join('convocatoria_users', function ($join)use($user) {
            $join->on('convocatoria_users.id', '=', 'convocatoria_user_pagos.convocatoria_user_id')
                 ->where('user_id', $user->id);
        })
        ->leftjoin('convocatoria_papels','convocatoria_papels.id','convocatoria_users.papel')
        ->join('convocatorias','convocatorias.id','convocatoria_users.convocatoria_id')
        ->join('clients','clients.id','convocatorias.client_id')
        ->select('clients.logo as logo_client','clients.name as client','convocatorias.titulo','convocatoria_papels.name as papel','convocatoria_user_pagos.monto','convocatoria_user_pagos.status')
        ->limit($limit)
        ->get();
        $list=array();
        foreach($pagos as $pago){
            $pago->logo_client=asset('/app-assets/img/notices')."/".$pago->logo_client;
            $list[]=$pago;
        }
        $response=['success'=>true,'data'=>$list,'base_url'=>asset('/app-assets/img/logos/clients')];
        return response()->json($response, 201);
    }
    /**
     * Fin Pagos Acciones
     **/

    /**
     * Inicio Notice Acciones
     **/
    public function notices(Request $request)
    {
        $notices = Notice::where('status',1)
        ->limit(3)
        ->get();
        $list=array();
        foreach($notices as $notice){
            $notice->background=asset('/app-assets/img/notices')."/".$notice->background;
            $list[]=$notice;
        }
        $response=['success'=>true,'data'=>$list,'base_url'=>asset('/app-assets/img/notices')];
        return response()->json($response, 201);
    }
    /**
     * Fin Notice Acciones
     **/

     /**
     * Inicio Perfil Acciones
     **/
    public function profile(Request $request)
    {
        $user = $request->user();
        $profile["user"] = $user;//User::find($user->id);
        $response=['success'=>true,'data'=>$user,'base_url'=>asset('/avatar')];
        return response()->json($response, 201);
    }
    /**
     * Fin Perfil Acciones
     **/

     
}
