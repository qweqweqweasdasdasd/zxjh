<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JH extends Model
{
    protected $primaryKey = 'jh_id';
	protected $table = 'jh';
    protected $fillable = ['bs','hm','is_show','type'];

}
