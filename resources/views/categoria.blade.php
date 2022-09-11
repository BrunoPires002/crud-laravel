@extends('template.template')

@section('content')

<!-- STYLES -->
<link href="{{ URL::asset('css/tabelas.css') }}" rel="stylesheet" type="text/css">


<div class="container">

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cadastre a categoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Categoria:</label>
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
      <th scope="col">ID</th>
      <th scope="col">Categorias</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      @foreach($categoria as $c)
        <tr>
          <th>{{$c->idCategoria}}</th>
          <th>{{$c->nomeCategoria}}</th>
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
<!-- BOTAO CADASTRAR DO MODAL -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Cadastrar</button>
</div>
    @endsection