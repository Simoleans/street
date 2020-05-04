<?php
//Inicializar
use App\User;
use App\Image;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;




function AuthID() {
	return Auth::user()->id;
}

function modelos()
{
	return User::where('rol_id',2)->get();
}

function image($url)
{
	return \Storage::disk('s3')->url($url);
}

function integerToDate($number)
{
	$date = date('Y-m-d', strtotime('today -'.$number.' years'));

	return $date;
}

function CalculateEdad($fecha)
{ 
    //$odate = getMeta('user','fecha_nac',$this->id);
    $newDate = date("Y-m-d", strtotime($fecha));
    $fecha_nac = Carbon::parse($newDate)->age;

    return $fecha_nac;
}

function softDelete($query)
{
	$query->status = 0;
	
	return $query->save() ? true : false; 
}




?>