<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsConvocatorias extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('convocatorias', function (Blueprint $table) {
            $table->dropColumn('fecha');
            $table->date('fecha_filmacion');
            $table->date('fecha_prueba');
            $table->date('fecha_callback');
            $table->date('fecha_ensayo');
            $table->integer('duracion');
            $table->unsignedBigInteger('medio_id')->nullable();
            $table->foreign('medio_id')->references('id')->on('medios');
            $table->unsignedBigInteger('productora_id')->nullable();
            $table->foreign('productora_id')->references('id')->on('productoras');
            $table->unsignedBigInteger('territorio_id')->nullable();
            $table->foreign('territorio_id')->references('id')->on('territorios');
            $table->unsignedBigInteger('competencia_id')->nullable();
            $table->foreign('competencia_id')->references('id')->on('competencias');
            $table->string('tipo')->nullable();
            $table->string('producto')->nullable();
            $table->date('dia_casting')->nullable();
            $table->integer('presupuesto')->nullable();
            $table->string('direccion')->nullable();
            $table->unsignedBigInteger('region_id')->nullable();
            $table->foreign('region_id')->references('id')->on('regiones');
            $table->unsignedBigInteger('comuna_id')->nullable();
            $table->foreign('comuna_id')->references('id')->on('comunas');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('convocatorias', function (Blueprint $table) {
            $table->renameColumn('fecha_filmacion','fecha');
            $table->dropForeign(['medio_id','productora_id','territorio_id','competencia_id','region_id','comuna_id']);
            $table->dropColumn(['medio_id','productora_id','territorio_id','competencia_id','region_id','comuna_id','duracion','fecha_callback','fecha_ensayo','tipo','producto','dia_casting','presupuesto','direccion']);

        });
    }
}
