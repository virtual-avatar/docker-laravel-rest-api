<?php

use Illuminate\Database\Seeder;

class ContactsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create('ru_RU');
        for($i=0; $i<100; $i++):
            $contact = new \App\Contact(
                [
                    'first_name' => $faker->firstNameMale(\Faker\Provider\Person::GENDER_MALE),
                    'last_name' => $faker->lastName(\Faker\Provider\Person::GENDER_MALE),
                    'email' => $faker->email,
                    'city' => $faker->city,
                    'country' => 'Россия'
                ]
            );
            $contact->save();
        endfor;
    }
}
