<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldConvocatoriaPapel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('convocatoria_papels', function (Blueprint $table) {
            $table->dropColumn('name');
        });

        Schema::table('convocatoria_papels', function (Blueprint $table) {
            $table->string('nombre_rol')->after('convocatoria_id');
            $table->string('descripcion_rol')->after('convocatoria_id');
            $table->string('edad_desde')->after('convocatoria_id');
            $table->string('edad_hasta')->after('convocatoria_id');
            $table->string('sexo')->after('convocatoria_id');
            $table->string('presupuesto_papel')->after('convocatoria_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('convocatoria_papels', function (Blueprint $table) {
            //
        });
    }
}
