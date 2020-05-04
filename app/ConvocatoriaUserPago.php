<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConvocatoriaUserPago extends Model
{
    public function convocatoriauser() {
        return $this->belongsTo('App\ConvocatoriaUser','convocatoria_user_id');
    }
}
