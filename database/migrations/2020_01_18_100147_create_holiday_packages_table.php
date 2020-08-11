<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHolidayPackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('holiday_packages', function (Blueprint $table) {
            $table->increments('id');
            $table->string('package_name');
            $table->string('country');
            $table->string('city');
            $table->integer('total_day');
            $table->string('valid_from');
            $table->string('valid_to');
            $table->integer('person');
            $table->text('description');
            $table->text('tour_details');
            $table->text('included_services');
            $table->text('Excluded_services');
            $table->text('Acommodation');
            $table->string('image');
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
        Schema::dropIfExists('holiday_packages');
    }
}
