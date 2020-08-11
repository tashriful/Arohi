<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResortDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resort_details', function (Blueprint $table) {
            $table->increments('id');
        $table->integer('resort_id')->unsigned();
        $table->string('package_category');
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
        Schema::dropIfExists('resort_details');
    }
}
