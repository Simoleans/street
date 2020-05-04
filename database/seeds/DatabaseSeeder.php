<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
      App\Roles::create([
          'name'   => 'Admin',
        ]);
      App\Roles::create([
          'name'   => 'Modelo',
        ]);

         App\User::create([
          'name'   => 'Admin',
          'lastname'     => 'Administrator',
          'email'   => 'admin@admin.com',
          'password'  => bcrypt('admin123456'),
          'rol_id' => 1,
          //'rut' => '555555-5'
        ]);

        App\Idioma::create([
          'idioma'   => 'Español',
        ]);


           $this->call(NacionalidadSeeder::class);
           $this->call(RegionesSeeder::class);
           $this->call(ComunasSeeder::class);

    }
}
