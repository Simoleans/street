<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    public function convocatorias() {
        return $this->hasMany('App\Convocatoria','client_id');
    }

    public static function  whereStatusActive()
    {
    	return self::where('status',1)
	    ->orderBy('name', 'ASC')
	    ->get();
    }
}
