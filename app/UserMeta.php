<?php

namespace App;

use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;

class UserMeta extends Model
{
	public $table = 'user_metas';

  public function description()
    {
        return $this->meta('telefono').' ('.$this->meta('sexo').'/'.$this->edad().')';
    }

    public function fullName()
    {
        return $this->name.' '.$this->lastname;
    }

    /**
     * leer edad de la modelo
     * @return integer  edad
     */
    public function edad()
    { 
        $odate = getMeta('user','fecha_nac',$this->user->id);
        $newDate = date("Y-m-d", strtotime($odate));
        $fecha_nac = Carbon::parse($newDate)->age;

        return $fecha_nac;
    }

    /**
     * dato de registro
     * @param  [type] $meta meta que quiere buscar
     * @return string 
     */
    public function meta($meta)
    {
        return getMeta('user',$meta,$this->id);
    }

	function dtemeta($user_id,$meta) { 
		$DteMeta = UserMeta::where('user_id',$user_id)->where('meta_key',$meta)->first();
		if($DteMeta!=null) {$dato = $DteMeta->meta_value;} else {$dato=null;}
		return $dato;
	}

	//Trae el dato meta de un DTE
	function setdtemeta2($user_id,$meta_key,$meta_value) { 
		$dtem = UserMeta::where([
			['user_id',$user_id],
			['meta_key',$meta_key],
		])->first();

		if ($dtem==null) {
			$dtem = new UserMeta(); 
		    $dtem->user_id = $user_id;
		    $dtem->meta_key = $meta_key;
		}

		$dtem->meta_value = $meta_value;
		$dtem->save();

	}

  public function nacionalidad()
  {
    return $this->belongsTo('App\Nacionalidad','meta_value');
  }

  public function ocupacion()
  {
    return $this->belongsTo('App\Ocupacion','meta_value');
  }

  public function ocio()
  {
    return $this->belongsTo('App\Ocio','meta_value');
  }

  public function region()
  {
    return $this->belongsTo('App\Regiones','meta_value');
  }

  public function comuna()
  {
    return $this->belongsTo('App\Comunas','meta_value');
  }

    public function user() {
        return $this->belongsTo('App\User','user_id');
    }

    

   // public function scopeEdad($query,$desde,$hasta)
   // {
   
   //      if ($desde && $hasta) {

   //      	$d = integerToDate($desde);
   //      	$h = integerToDate($hasta);
   //      	//dd($d,$h);
   //          //return $query->where('meta_key','fecha_nac')->WhereBetween('meta_value', [$d, $h]);

   //          /** put it like this so we don't have to repeat it everywhere where needed **/
   //         $paydate_raw = DB::raw("STR_TO_DATE(`meta_value`, '%d-%m-%Y')");

   //         * encoding the raw query. the ? is populated by setBindings() *
   //         $start_raw = DB::raw("STR_TO_DATE(?, '%d-%m-%Y')");
   //         $end_raw = DB::raw("STR_TO_DATE(?, '%d-%m-%Y')");


   //          return $query->where($paydate_raw, '<', $start_raw)->where($paydate_raw, ">", $end_raw)->
   //                          // where('meta_key','fecha_nac')->
   //                            // orderBy('meta_value', "DESC")->
   //                            setBindings([$d, $h]);

            
   //          // debugging output.
   //          //echo $query->toSql();
   //      }
   // }
   // 
    

   // protected $dates = [
   //      'meta_value',
   //  ];
}
