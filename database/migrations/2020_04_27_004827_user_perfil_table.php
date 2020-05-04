<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserPerfilTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_perfil', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');

            $table->enum('sexo',['M','F']);
            $table->string('genero',17);
            $table->string('rut',13)->nullable();
            $table->date('fecha_nac');

            $table->unsignedBigInteger('nacionalidad_id');
            $table->foreign('nacionalidad_id')->references('id')->on('nacionalidad');

            $table->unsignedBigInteger('region_id')->nullable();
            $table->foreign('region_id')->references('id')->on('regiones');

            $table->unsignedBigInteger('comuna_id')->nullable();
            $table->foreign('comuna_id')->references('id')->on('comunas');

            $table->string('direccion',130)->nullable();
            $table->string('telefono',15)->nullable();
            $table->string('facebook',120)->nullable();
            $table->string('instagram',100)->nullable();
            $table->integer('calzado')->nullable();
            $table->string('altura',5)->nullable();
            $table->string('talla_pantalon',5)->nullable();
            $table->string('talla_camisa',5)->nullable();
            $table->string('notas',150)->nullable();
            $table->string('derechos',150)->nullable();
            $table->string('comerciales',170)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_perfil');
    }
}
