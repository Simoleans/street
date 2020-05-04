<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class ConvocatoriaPapel extends Model
{
	public $table = 'convocatoria_papels';

    public function convocatoria() 
    {
        return $this->belongsTo('App\Convocatoria','convocatoria_id');
    }

    public function convocatoriaUser() 
    {
        return $this->hasMany('App\ConvocatoriaUser','papel')->where('status',1);
    }
    public function metas()
    {
        return $this->hasMany('App\ConvocatoriaPapelMeta','convocatoria_papel_id');
    }

    public function modelos()
    {
    	return $this->belongsToMany('App\User','user_id');
    }

    
}
