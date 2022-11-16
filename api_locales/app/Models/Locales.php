<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Locales extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table='locales';
    protected $primarykey='id';
    public $incrementing = true;
    protected $keytype='bigInteger';
}
