<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoriaModel extends Model
{
    protected $table = "tbcategoria"; //nome da tabela a var deve ter o nome $table
    protected $fillable = [
        'idCategoria',
        'categoria'
    ];
    use HasFactory;
}
