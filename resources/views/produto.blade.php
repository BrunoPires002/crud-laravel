@extends('template.template')

@section('content')

<!-- STYLES -->
<link href="{{ URL::asset('css/tabelas.css') }}" rel="stylesheet" type="text/css">

<div class="container">


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cadastre o produto</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Produto:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary">Cadastrar</button>
      </div>
    </div>
  </div>
</div>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">ID produto</th>
      <th scope="col">ID categoria</th>
      <th scope="col">Produto</th>
      <th scope="col">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      @foreach($produto as $p)
          <tr>
            <th>{{$p->idProduto}}</th>
            <th>{{$p->idCategoria}}</th>
            <th>{{$p->nomeProduto}}</th>
            <th>{{$p->valorProduto}}</th>
            <td class="text-right">
                <a href="#">
                    <input class="btn" type="button" value="Editar">
                    <input class="btn" type="button" value="Excluir">
                </a>
            </td>
          </tr>
      @endforeach
    </tr>
  </tbody>
</table>
<!-- BOTAO DO MODAL -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Cadastrar</button>
</div>
@endsection