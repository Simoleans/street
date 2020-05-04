<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use Illuminate\Http\Request;

class User extends Authenticatable implements JWTSubject
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'lastname', 'email', 'password','rol_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

     /**
     * Verificar si el User tiene Role modelo
     */
    public function isModel()
    {
      return $this->rol_id == 2;
    }

    public function isAdmin()
    {
      return $this->rol_id == 1;
    }

    public function foto()
    {
        return $this->hasOne('App\Image','user_id');
    }

    public function perfil()
    {
        return $this->hasOne('App\UserPerfil','user_id');
    }

    //Conexion con otras tablas
    public function metas() {
        return $this->hasMany('App\UserMeta','user_id');
    }


    public function notifications() {
        return $this->hasMany('App\Notification','notification_id');
    }

    public function rol() {
        return $this->belongsTo('App\UserRol','rol_id');
    }

    public function description()
    {
        return $this->perfil->telefono.' ('.$this->perfil->sexo.'/'.$this->edad().')';
    }

    public function userOcio()
    {
       return $this->hasMany('App\UserOcio','user_id');
    }

    public function userIdiomas()
    {
       return $this->hasMany('App\UserIdioma','user_id');
    }

    public function userOcupacion()
    {
       return $this->hasMany('App\UserOcupacion','user_id');
    }

    public function printOcupacion()
    {
       if($this->userOcupacion()->exists())
       {
             foreach ($this->userOcupacion as $value) {
                 $datos [] = $value->ocupacion->nombre;
             }

            return implode(', ',$datos);
       }else{

            return 'N/T';
       }
        
    }

    public function printOcio()
    {
       if($this->userOcio()->exists())
       {
             foreach ($this->userOcio as $value) {
                 $datos [] = $value->ocio->ocio;
             }

            return implode(', ',$datos);
       }else{

            return 'N/T';
       }
        
    }

    public function printIdiomas()
    {
       if($this->userIdiomas()->exists())
       {
             foreach ($this->userIdiomas as $value) {
                 $datos [] = $value->idioma->idioma;
             }

            return implode(', ',$datos);
       }else{

            return 'N/T';
       }
        
    }

    public function fullName()
    {
        return $this->name.' '.$this->lastname;
    }

    /**
     * leer edad de la modelo
     * @return integer  edad
     */
    public function edad()
    { 
        //$odate = getMeta('user','fecha_nac',$this->id);
        $newDate = date("Y-m-d", strtotime($this->fecha_nac));
        $fecha_nac = Carbon::parse($newDate)->age;

        return $fecha_nac;
    }

    /**
     * dato de registro
     * @param  [type] $meta meta que quiere buscar
     * @return string 
     */
    public function meta($meta)
    {
        return getMeta('user',$meta,$this->id);
    }

    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     *
     * @return mixed
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }
    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    
}
