<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClerancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clerances', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id', 0);
            $table->string('requested_from')->default('student');
            $table->string('library_status')->default('pending');
            $table->string('police_status')->default('pending');
            $table->string('guard_status')->default('pending');
            $table->string('procter_status')->default('pending');
            $table->string('hmr_status')->default('pending');
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
        Schema::dropIfExists('clerances');
    }
}
