<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConvocatoriaUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('convocatoria_users', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('convocatoria_id');
            $table->foreign('convocatoria_id')->references('id')->on('convocatorias');
            $table->unsignedInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');
            $table->unsignedInteger('papel')->nullable();
            $table->foreign('papel')->references('id')->on('convocatoria_papels');
            $table->smallInteger('status')->default(1);
            $table->smallInteger('confirmation')->default(1);
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
        Schema::dropIfExists('convocatoria_users');
    }
}
