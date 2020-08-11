<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAirsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('airs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('airlines_name');
            $table->string('cabin_class');
            $table->string('flying_from');
            $table->string('flying_from_airport');
            $table->string('departure_time');
            $table->string('flying_to');
            $table->string('flying_to_airport');
            $table->string('destination_time');
            $table->string('date');
            $table->string('total_seat');
            $table->string('baggage_load');
            $table->integer('price');
            $table->integer('discount_price')->nullable();
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
        Schema::dropIfExists('airs');
    }
}
