<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Sub_Rental_Paket extends Model
{
    protected $table = 'sub_rental_pakets';

    protected $hidden = [

    ];

    protected $guarded = [];
    protected $fillable = ['packName','jenisPaket','nameCars','namaSupir','price','fasilitas'];

    protected $dates = ['deleted_at'];


    public function scopeIsPlusSopir($query)
    {
        return DB::table('sub_rental_pakets')
            ->join('sub_rental_mobils', 'sub_rental_pakets.nameCars', '=', 'sub_rental_mobils.id')
            ->join('sub_rental_sopirs', 'sub_rental_pakets.namaSopir', '=', 'sub_rental_sopirs.id')
            ->join('uploads', 'sub_rental_mobils.image', '=', 'uploads.id')
            ->select('sub_rental_pakets.id', 'sub_rental_pakets.packName', 'sub_rental_pakets.price', 'sub_rental_pakets.fasilitas', 'sub_rental_mobils.nameCars', 'sub_rental_sopirs.namaSupir', 'uploads.name')
            ->whereNull('sub_rental_sopirs.deleted_at')
            ->where('sub_rental_pakets.jenisPaket','=', 'Paket Plus Sopir')
            ->orderBy('sub_rental_pakets.id','desc')
            ->get();
    }
    public function scopeIsLengkap($query)
    {
        return DB::table('sub_rental_pakets')
            ->join('sub_rental_mobils', 'sub_rental_pakets.nameCars', '=', 'sub_rental_mobils.id')
            ->join('sub_rental_sopirs', 'sub_rental_pakets.namaSopir', '=', 'sub_rental_sopirs.id')
            ->join('uploads', 'sub_rental_mobils.image', '=', 'uploads.id')
            ->select('sub_rental_pakets.id', 'sub_rental_pakets.packName', 'sub_rental_pakets.price', 'sub_rental_pakets.fasilitas', 'sub_rental_mobils.nameCars', 'sub_rental_sopirs.namaSupir', 'uploads.name')
            ->whereNull('sub_rental_sopirs.deleted_at')
            ->where('sub_rental_pakets.jenisPaket','=', 'Paket Lengkap')
            ->orderBy('sub_rental_pakets.id','desc')
            ->get();
    }
}
