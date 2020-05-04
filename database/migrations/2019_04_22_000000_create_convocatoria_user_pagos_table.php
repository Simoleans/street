<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConvocatoriaUserPagosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('convocatoria_user_pagos', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('convocatoria_user_id');
            $table->foreign('convocatoria_user_id')->references('id')->on('convocatoria_users');
            $table->unsignedInteger('monto');
            $table->date('fecha');
            $table->smallInteger('status')->default(1);
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
        Schema::dropIfExists('convocatoria_user_pagos');
    }
}
