<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RegionesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Tarapacá',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Antofagasta',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Atacama',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Coquimbo',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Valparaíso',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Libertador General Bernardo O\'Higgins',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Maule',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Bío-Bío',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Araucanía',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Los Lagos',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Aysén del General Carlos Ibañez del Campo',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Magallanes y de la Antártica Chilena',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Metropolitana de Santiago',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Los Ríos',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Arica y Parinacota',
      ]);
      DB::table('regiones')->insert([
          'nacionalidad_id' => '39',
          'region' => 'Ñuble',
      ]);
    }
}
