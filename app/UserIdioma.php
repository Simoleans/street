<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserIdioma extends Model
{
    protected $table = 'user_idiomas';

    protected $fillable = [ 'user_id',
				            'idioma_id'];

	public function idioma()
    {
       return $this->belongsTo('App\Idioma','idioma_id');
    }
}
