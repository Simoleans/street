<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConvocatoriaPapelMeta extends Model
{
    public function papel() {
        return $this->belongsTo('App\ConvocatoriaPapel','convocatoria_papel_id');
    }
}
