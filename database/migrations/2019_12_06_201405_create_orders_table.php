<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('hotel_id');
            $table->unsignedInteger('room_id');
            $table->unsignedInteger('user_id');
            $table->string('name');
            $table->integer('total_room');
            $table->string('check_in');
            $table->string('check_out');
            $table->integer('number');
            $table->bigInteger('votar_id');
            $table->string('address');
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
        Schema::dropIfExists('orders');
    }
}
