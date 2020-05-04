<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\ConvocatoriaPapel;
use Illuminate\Http\Request;
use App\UserPerfil;
use App\ConvocatoriaUser;

class Convocatoria extends Model
{
	public $table = 'convocatorias';

	protected $fillable = [
                            'titulo', 
                            'client_id',
                            'fecha_filmacion',
                            'fecha_prueba',
                            'fecha_callback',
                            'fecha_ensayo',
                            'duracion',
                            'medio_id',
                            'productora_id',
                            'territorio_id',
                            'competencia_id',
                            'tipo',
                            'producto',
                            'dia_casting',
                            'presupuesto',
                            'direccion',
                            'region_id',
                            'comuna_id'];

    public function metas() {
        return $this->hasMany('App\ConvocatoriaMeta','convocatoria_id');
    }
    public function users() {
        return $this->hasMany('App\ConvocatoriaUser','convocatoria_id');
    }
    public function papels() {
        return $this->hasMany('App\ConvocatoriaPapel','convocatoria_id');
    }
    public function client() {
        return $this->belongsTo('App\Client','client_id');
    }

    public function ConvocatoriaUser()
    {
        return $this->belongsToMany('App\ConvocatoriaUser','convocatoria_id');
    }

    public function productora()
    {
        return $this->belongsTo('App\Productora','productora_id');
    }

    public function medio()
    {
        return $this->belongsTo('App\Medios','medio_id');
    }

    public function territorio()
    {
        return $this->belongsTo('App\territorio','territorio_id');
    }

    public function comuna()
    {
    return $this->belongsTo('App\Comunas','comuna_id');
    }

    public function region()
    {
    return $this->belongsTo('App\Regiones','region_id');
    }

    public function convocatoriaCompetencia()
    {
       return $this->hasMany('App\ConvocatoriaCompetencia','convocatoria_id');
    }

    public function printCompetencia()
    {
       if($this->convocatoriaCompetencia()->exists())
       {
             foreach ($this->convocatoriaCompetencia as $value) {
                 $datos [] = $value->competencia->nombre;
             }

            return implode(', ',$datos);
       }else{

            return 'N/T';
       }
        
    }

    public function saveMetasPapel(Request $request,$key,$id)
    {
        
        $convopapel = new ConvocatoriaPapel;
        $convopapel->convocatoria_id =  $id;
        $convopapel->nombre_rol =  $request->nombre_rol[$key];
        $convopapel->descripcion_rol =  $request->descripcion_rol[$key];
        $convopapel->edad_desde =  $request->edad_desde[$key];
        $convopapel->edad_hasta =  $request->edad_hasta[$key];
        $convopapel->sexo =  $request->sexo[$key];
        $convopapel->presupuesto_papel =  $request->presupuesto_papel[$key];
        //$convopapel->save();

        $this->saveUserPapel($id,$convopapel->id,$convopapel->edad_desde,$convopapel->edad_hasta,$convopapel->sexo);

        return true;
    }

    public function saveUserPapel($id,$papel,$desde,$hasta,$sexo)
    {
        $ar = ['desde' => $desde , 'hasta' => $hasta];
        dd($ar);
        $desde = max($ar);
        $hasta = min($ar);
        //dd($desde,$hasta);
        $d = integerToDate($desde);
        $h = integerToDate($hasta);



       $usuarios =  UserPerfil::whereBetween('fechanac', [$d, $h])->where('sexo',$sexo)->get();

       foreach ($usuarios as $value) {

           $convouser = new ConvocatoriaUser;
           // $convouser->convocatoria_id = $id;
           $convouser->user_id = $value->user_id;
           $convouser->papel = $papel;
           $convouser->save();

       }

       return true;
    }
}
