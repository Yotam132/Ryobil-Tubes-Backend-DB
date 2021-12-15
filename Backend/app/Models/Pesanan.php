<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Pesanan extends Model
{
    use HasFactory;

    protected $fillable = [
        'userid',
        'pengirim_nama',
        'pengirim_alamat',
        'pengirim_nomor',

        'penerima_nama',
        'penerima_alamat',
        'penerima_nomor',

        'jenisKurir',
        'jenisPaket',
    ];

    public function getCreatedAtAttribute()
    {
        if(!is_null($this->attributes['created_at']))
        {
            return Carbon::parse($this->attributes['created_at'])->format('Y-m-d H:i:s');
        }
    }

    public function getUpdatedAtAttribute()
    {
        if(!is_null($this->attributes['updated_at']))
        {
            return Carbon::parse($this->attributes['updated_at'])->format('Y-m-d H:i:s');
        }
    }
}
