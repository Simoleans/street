<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Idioma extends Model
{
     public static function  whereStatusActive()
    {
    	return self::where('status',1)
	    ->orderBy('idioma', 'ASC')
	    ->get();
    }
}
