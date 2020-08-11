<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDaytripsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('daytrips', function (Blueprint $table) {
            $table->increments('id');
        $table->string('package_name');
        $table->string('country');
        $table->string('city');
        $table->integer('person');
        $table->text('description');
        $table->string('image');
        $table->integer('price');
        $table->integer('discount_price')->nullable();;
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
        Schema::dropIfExists('daytrips');
    }
}
