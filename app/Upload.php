<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Upload extends Model
{

    protected $table = 'uploads';

    protected $hidden = [

    ];

    protected $guarded = [];

    protected $dates = ['deleted_at'];


    /**
     * Get File path
     */
    public function path()
    {
        return url("files/".$this->hash."/".$this->name);
    }
}
