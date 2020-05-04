<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ModifyDb extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::rename('convocatoria_users', 'convocatoria_users_papel');

        Schema::table('convocatoria_users_papel', function (Blueprint $table) {
            $table->dropForeign('convocatoria_users_convocatoria_id_foreign');
            $table->dropColumn('convocatoria_id');
         });

        Schema::table('user_perfil', function (Blueprint $table) {
            $table->dropColumn(['edad']);
         });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
