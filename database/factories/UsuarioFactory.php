<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario>
 */
class UsuarioFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        
        return [

            'nombre'=> fake()->firstName(),
            'apellido'=> fake()->lastName(),
            'correo'=> fake()->email(),
            'fecha_registro'=> fake()->date()
            
        ];
    }
}
