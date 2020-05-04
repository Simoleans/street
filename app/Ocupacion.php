<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ocupacion extends Model
{
   public static function  whereStatusActive()
    {
    	return self::where('status',1)
	    ->orderBy('nombre', 'ASC')
	    ->get();
    }
}
