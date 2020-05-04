<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/', function () {
    return view('landing');
})->name('landing');
Route::get('/registrar', function () {
    return view('register');
})->name('registrar.public');

Route::post('auth', 'LoginController@login')->name('auth');
Route::get('/logout', 'LoginController@logout')->name('logout');


Route::post('/status/{id}','ConvocatoriaController@status')->name('convocatoria.status');

Route::group(['middleware' => 'auth'], function () {
    //middleware auth
    Route::get('/dashboard', 'LoginController@index')->name('dashboard');

    //* --- Perfil --- */
    Route::get('/perfil', 'UserController@perfil')->name('perfil');
    Route::patch('/perfil', 'UserController@update_perfil')->name('update_perfil');
    Route::get('usuario/myprofile','UserController@profile')->name('user.profile');
    Route::get('usuario/myprofile/update','UserController@update_profile')->name('user.profile.update');
    Route::get('usuario/profile/password','UserController@profile_password')->name('password.profile');
    Route::patch('/update/password', 'UserController@update_password')->name('update_password');

    /* --------- Convocatoria --------*/
    Route::resource('/convocatoria','ConvocatoriaController');
    Route::resource('/convocatoria-meta','ConvocatoriaMetaController');

    /* -------- User Meta Key --------------*/
    Route::resource('/metaUser','UserMetaKeyController');

    /* ----------- Ocios ----------*/
    Route::resource('/ocios','OcioController');
    Route::post('search/ocio/{ocio}','OcioController@search')->name('ocios.search');

    /* ---- cliente --- */
    Route::resource('/cliente','ClientController');
    Route::post('search/cliente/{cliente}','ClientController@search')->name('cliente.search');

     /* ---- productora --- */
    Route::resource('/productora','ProductoraController');
    Route::post('search/productora/{productora}','ProductoraController@search')->name('productora.search');

    /* ---- medio --- */
    Route::resource('/medios','MediosController');
    Route::post('search/medios/{medios}','MediosController@search')->name('medios.search');

    /* ---- comptencia --- */
    Route::resource('/competencia','CompetenciaController');
    Route::post('search/competencia/{competencia}','CompetenciaController@search')->name('competencia.search');

    /* ---- territorio --- */
    Route::resource('/territorio','TerritorioController');
    Route::post('search/territorio/{territorio}','TerritorioController@search')->name('territorio.search');

    /* ----------- Ocupacion ----------*/
    Route::resource('/ocupacions','OcupacionController');
    Route::post('search/ocupacions/{ocupacion}','OcupacionController@search')->name('ocupacions.search');

    /* ---------- Idiomas ------- */
    Route::resource('/idiomas','IdiomaController');
     Route::post('search/idiomas/{idioma}','IdiomaController@search')->name('idiomas.search');

    /* --- user ---*/
    Route::resource('/user', 'UserController');

    /* -- convocatoria papel -- */
    Route::resource('convopapel','ConvocatoriaPapelController');
    /* -- convocatoria user */
    Route::resource('convouser','ConvocatoriaUserController');



    /* ------ Ajax request ----------*/
     Route::get('comunas/{id}','UserController@comunas')->name('comunas');
     Route::get('regiones/{id}','UserController@regiones')->name('region');
     // Route::post('image/upload','ImageController@postUpload')->name('image.upload');
        /* ----- Formulario busqueda (index user) ----*/
        Route::post('/formSearchUser','UserController@search_form')->name('search.form.user');
});
