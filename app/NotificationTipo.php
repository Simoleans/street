<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NotificationTipo extends Model
{
    public function notifications() {
        return $this->hasMany('App\Notification','tipo');
    }
}
