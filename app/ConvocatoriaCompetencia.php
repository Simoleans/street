<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConvocatoriaCompetencia extends Model
{
    protected $fillable = ['convocatoria_id','competencia_id'];

    public function competencia()
    {
       return $this->belongsTo('App\Competencia','competencia_id');
    }
}
