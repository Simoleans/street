<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class UserPerfil extends Model
{
    protected $table = 'user_perfil';

    protected $fillable = [ 'user_id',
				            'sexo',
				            'genero',
				            'rut',
				            'fecha_nac',
				            'nacionalidad_id',
				            'region_id',
				            'comuna_id',
				            'direccion',
				            'telefono',
				            'facebook',
				            'instagram',
				            'calzado',
				            'altura',
				            'talla_pantalon',
				            'talla_camisa',
				            'notas',
				            'derechos',
				            'comerciales'];

	public function user()
	{
		return $this->belongsTo('App\User','user_id');
	}

  public function nacionalidad()
  {
    return $this->belongsTo('App\Nacionalidad','nacionalidad_id');
  }

  public function comuna()
  {
    return $this->belongsTo('App\Comunas','comuna_id');
  }

  public function region()
  {
    return $this->belongsTo('App\Regiones','region_id');
  }

  


	public static function result(Request $request)
    {
        $data['data'] = self::orderBy('id','DESC')
                        ->edad($request->edad_desde,$request->edad_hasta)
                        ->sexo($request->genero)
                        ->get();

        return (object) $data;
    }

    public function scopeEdad($query,$desde,$hasta)
    {
       if ($desde && $hasta) {
          $d = integerToDate($desde);
          $h = integerToDate($hasta);
          // dd($desde,$hasta);
            $query->whereBetween('fecha_nac', [$d, $h]);
 
        }
    }

   public function scopeSexo($query,$sexo)
   {
        
        if ($sexo == 'M') {

            $query->where('sexo', 'M');


        }else if ($sexo == 'F') {

            $query->where('sexo', 'F');

        }
   }
}
