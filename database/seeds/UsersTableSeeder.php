<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name'              => 'Diogo Brito',
            'email'             => 'diogo.brito7@gmail.com',
            'password'          => bcrypt('010203'),
            'remember_token'    => str_random(10),
            'created_at'        => \Carbon\Carbon::now(),
            'updated_at'        => \Carbon\Carbon::now()
        ]);
    }
}
