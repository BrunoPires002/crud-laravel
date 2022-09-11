<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProdutoModel extends Model
{
    protected $table = "tbproduto";
    protected $fillable = [
        'idProduto',
        'idCategoria',
        'nomeProduto',
        'valorProduto'
    ];
    use HasFactory;
}
