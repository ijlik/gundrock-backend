<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sub_Rental extends Model
{
    protected $table = 'sub_rentals';

    protected $hidden = [

    ];

    protected $guarded = [];

    protected $dates = ['deleted_at'];
}
