<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConvocatoriaMeta extends Model
{
    public function convocatoria() {
        return $this->belongsTo('App\Convocatoria','convocatoria_id');
    }

    public function productora()
    {
    	return $this->belongsTo('App\Productora','meta_value');
    }

    public function medio()
    {
    	return $this->belongsTo('App\Medios','meta_value');
    }

    public function territorio()
    {
    	return $this->belongsTo('App\Territorio','meta_value');
    }

    public function competencias()
    {
    	return $this->belongsTo('App\Competencia','meta_value');
    }

    public function region()
    {
    	return $this->belongsTo('App\Regiones','meta_value');
    }

    public function comuna()
    {
    	return $this->belongsTo('App\Comunas','meta_value');
    }
}
