<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Comunas;
class Regiones extends Model
{
    protected $table = "regiones";


    public function comunas()
    {
      return $this->hasMany('App\Comunas','region_id');
    }

    public static function comunas_ajax($region)
    {

    	$comunas = Comunas::where('region_id',$region)
                    // ->orderBy('LENGTH(comuna)', 'ASC')
                    ->orderBy('comuna', 'ASC')
                    ->get();

      
    	//dd($comunas);
    	return response()->json($comunas);
    }

    public static function regiones_ajax($nacionalidad)
    {

        $regiones = self::where('nacionalidad_id',$nacionalidad)
                    // ->orderBy('LENGTH(comuna)', 'ASC')
                    ->orderBy('region', 'ASC')
                    ->get();

      
        //dd($regiones);
        return response()->json($regiones);
    }
}
