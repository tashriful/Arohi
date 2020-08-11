<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHotelDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hotel_details', function (Blueprint $table) {
        $table->increments('id');
        $table->integer('hotel_id')->unsigned();
        $table->string('room_category');
        $table->string('person');
        $table->text('description');
        $table->string('image');
        $table->integer('price');
       
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
        Schema::dropIfExists('hotel_details');
    }
}
