<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResortsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resorts', function (Blueprint $table) {
        $table->increments('id');
        $table->string('title');
        $table->string('Location');
        $table->text('description');
        $table->string('address');
        $table->string('image');
        $table->float('review')->default(5.0);
        $table->integer('price_range');
        $table->string('star');
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
        Schema::dropIfExists('resorts');
    }
}
