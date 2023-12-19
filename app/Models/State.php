<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class State extends Model
{
    use HasFactory;
<<<<<<< HEAD
    protected $fillable = [
        'id','state_name','country_id'
    ];
    protected $table="state";
=======
    protected $table="city";
>>>>>>> 8c1036991e72869c0c61065a4486528ff3e65d1e
    public $timestamps=false;
}
