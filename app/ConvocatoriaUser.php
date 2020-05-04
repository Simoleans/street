<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConvocatoriaUser extends Model
{
    public $table = 'convocatoria_users_papel';
    
	protected $fillable = ['convocatoria_id','user_id','papel'];
	
    // public function convocatoria() {
    //     return $this->belongsTo('App\Convocatoria','convocatoria_id');
    // }
    public function modelo() {
        return $this->belongsTo('App\User','user_id');
    }
    public function pagos() {
        return $this->hasMany('App\ConvocatoriaUserPago','convocatoria_user_id');
    }
}
