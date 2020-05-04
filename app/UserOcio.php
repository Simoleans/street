<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserOcio extends Model
{
   protected $table = 'user_ocio';

    protected $fillable = [ 'user_id',
				            'ocio_id'];

	public function ocio()
    {
       return $this->belongsTo('App\Ocio','ocio_id');
    }
}
