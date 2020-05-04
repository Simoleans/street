<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ocio extends Model
{
	public $table = 'ocios';
	
    public static function  whereStatusActive()
    {
    	return self::where('status',1)
	    ->orderBy('ocio', 'ASC')
	    ->get();
    }
}
