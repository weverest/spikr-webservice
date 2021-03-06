<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});

$factory->define(App\News::class, function (Faker\Generator $faker) {
    $status = ['posted', 'inactive'];

    return [
        'user_id'   => function () {
            return factory(App\User::class)->create()->id;
        },
        'title'     => $faker->text,
        'slug'      => str_slug($faker->text),
        'content'   => $faker->paragraph(3),
        'status'    => $status[array_rand(['posted', 'inactive'], 1)]
    ];
});

