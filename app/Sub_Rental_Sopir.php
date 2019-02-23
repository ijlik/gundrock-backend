<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Sub_Rental_Sopir extends Model
{
    protected $table = 'sub_rental_sopirs';

    protected $hidden = [

    ];

    protected $guarded = [];
    protected $fillable = ['namaSupir','noKTP','address','gender','birthDate','noSIM','subRental','foto','fotoSIM','fotoKTP','price', 'fasilitas'];

    protected $dates = ['deleted_at'];

    public function scopeIsReady($query)
    {
        return DB::table('sub_rental_sopirs')
            ->join('sub_rentals', 'sub_rental_sopirs.subRental', '=', 'sub_rentals.id')
            ->join('uploads', 'sub_rental_sopirs.foto', '=', 'uploads.id')
            ->select('sub_rental_sopirs.id', 'sub_rental_sopirs.namaSupir', 'sub_rental_sopirs.gender', 'sub_rentals.rentalName', 'sub_rental_sopirs.price', 'uploads.name')
            ->whereNull('sub_rental_sopirs.deleted_at')
            ->orderBy('sub_rental_sopirs.id','desc')
            ->get();
    }
}
