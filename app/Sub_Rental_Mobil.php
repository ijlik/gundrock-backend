<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Sub_Rental_Mobil extends Model
{
    protected $table = 'sub_rental_mobils';

    protected $hidden = [

    ];

    protected $guarded = [];
    protected $fillable = ['nameCars','years','tnkb','carsType','carsClass','image','description','status','capacity','price','owner'];

    protected $dates = ['deleted_at'];

    public function scopeIsReadyCity($query, $city, $capacity)
    {
        return DB::table('sub_rental_mobils')
            ->join('sub_rentals', 'sub_rental_mobils.owner', '=', 'sub_rentals.id')
            ->join('uploads', 'sub_rental_mobils.image', '=', 'uploads.id')
            ->select('sub_rental_mobils.id', 'sub_rental_mobils.nameCars', 'sub_rental_mobils.capacity', 'sub_rentals.rentalName', 'sub_rental_mobils.price', 'uploads.name', DB::raw('DATE_FORMAT(uploads.created_at,\'%Y-%m-%d-%H%i%s\') as created_at'))
            ->where('sub_rental_mobils.status','=','Tersedia')
            ->where('sub_rental_mobils.city','=',$city)
            ->where('sub_rental_mobils.capacity','>=',$capacity)
            ->whereNull('sub_rental_mobils.deleted_at')
            ->orderBy('sub_rental_mobils.id','desc')
            ->get();
    }

    public function scopeIsReadyInClass($query,$type,$id)
    {
        return $query->where('status','=','tersedia')->where('carsClass','=',$type)->where('id','<>',$id)->orderBy('id','desc');
    }
    public function scopeInCity($query, $city)
    {
        return $query->where('city','=',$city);
    }
    public function scopeInType($query, $type)
    {
        return $query->where('carsClass','=',$type);
    }
    public function scopeInTahun($query, $tahun)
    {
        return $query->where('years','=',$tahun);
    }
    public function scopeInRange($query, $min, $max)
    {
        return $query->where('price','>=',$min)->where('price','<=',$max);
    }
}
