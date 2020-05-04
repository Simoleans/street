<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserOcupacion extends Model
{
    protected $table = 'user_ocupacion';

    protected $fillable = [ 'user_id',
				            'ocupacion_id'];

	public function ocupacion()
    {
       return $this->belongsTo('App\Ocupacion','ocupacion_id');
    }
}
