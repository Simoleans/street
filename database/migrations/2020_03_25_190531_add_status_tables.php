<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('idiomas', function (Blueprint $table) {
           $table->string('status')->default(1)->after('idioma');
        });

        Schema::table('ocios', function (Blueprint $table) {
           $table->string('status')->default(1)->after('ocio');
        });

        Schema::table('productoras', function (Blueprint $table) {
           $table->string('status')->default(1)->after('nombre');
        });

        Schema::table('medios', function (Blueprint $table) {
           $table->string('status')->default(1)->after('nombre');
        });

        Schema::table('territorios', function (Blueprint $table) {
           $table->string('status')->default(1)->after('nombre');
        });

        Schema::table('competencias', function (Blueprint $table) {
           $table->string('status')->default(1)->after('nombre');
        });

        Schema::table('ocupacions', function (Blueprint $table) {
           $table->string('status')->default(1)->after('nombre');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('idiomas', function (Blueprint $table) {
            $table->dropColumn(['status']);
        });

        Schema::table('ocios', function (Blueprint $table) {
            $table->dropColumn(['status']);
        });

        Schema::table('productoras', function (Blueprint $table) {
            $table->dropColumn(['status']);
        });

        Schema::table('medios', function (Blueprint $table) {
            $table->dropColumn(['status']);
        });

        Schema::table('territorios', function (Blueprint $table) {
            $table->dropColumn(['status']);
        });

        Schema::table('competencias', function (Blueprint $table) {
            $table->dropColumn(['status']);
        });

        Schema::table('ocupacions', function (Blueprint $table) {
            $table->dropColumn(['status']);
        });
    }
}
