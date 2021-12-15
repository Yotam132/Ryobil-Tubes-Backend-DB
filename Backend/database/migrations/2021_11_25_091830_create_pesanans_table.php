<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePesanansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pesanans', function (Blueprint $table) {
            $table->id();
            $table->integer('userid');

            $table->string('pengirim_nama');
            $table->string('pengirim_alamat');
            $table->string('pengirim_nomor');

            $table->string('penerima_nama');
            $table->string('penerima_alamat');
            $table->string('penerima_nomor');

            $table->string('jenisKurir');
            $table->string('jenisPaket');

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
        Schema::dropIfExists('pesanans');
    }
}
