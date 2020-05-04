<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserRol extends Model
{
    public function users() {
        return $this->hasMany('App\User','rol_id');
    }
}
